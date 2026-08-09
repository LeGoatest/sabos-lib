// Package seobasic provides a small reference implementation for generating
// JSON-LD from server-owned page metadata.
package seobasic

import (
	"encoding/json"
	"errors"
	"net/url"
	"strings"
	"time"
)

// Site identifies the canonical site and organization responsible for content.
type Site struct {
	URL              string
	OrganizationName string
}

// Page contains the metadata required by the Article reference profile.
type Page struct {
	Path        string
	Title       string
	Description string
	PublishedAt time.Time
	ModifiedAt  time.Time
	Tags        []string
}

// OrganizationRef is a compact Schema.org organization reference.
type OrganizationRef struct {
	Type string `json:"@type"`
	Name string `json:"name"`
}

// ArticleJSONLD is the SEObasic baseline Schema.org Article profile.
type ArticleJSONLD struct {
	Context string `json:"@context"`
	Type    string `json:"@type"`

	Headline       string   `json:"headline"`
	Description    string   `json:"description"`
	DatePublished  string   `json:"datePublished"`
	DateModified   string   `json:"dateModified"`
	Keywords       []string `json:"keywords,omitempty"`
	URL            string   `json:"url"`
	MainEntityPage string   `json:"mainEntityOfPage"`

	Author OrganizationRef `json:"author"`
}

// Breadcrumb represents one visible breadcrumb item.
type Breadcrumb struct {
	Name string
	Path string
}

// BreadcrumbListItem is one Schema.org BreadcrumbList entry.
type BreadcrumbListItem struct {
	Type     string `json:"@type"`
	Position int    `json:"position"`
	Name     string `json:"name"`
	Item     string `json:"item"`
}

// BreadcrumbListJSONLD is the Schema.org BreadcrumbList profile.
type BreadcrumbListJSONLD struct {
	Context         string               `json:"@context"`
	Type            string               `json:"@type"`
	ItemListElement []BreadcrumbListItem `json:"itemListElement"`
}

// BuildArticleJSONLD serializes the Article profile for an editorial or
// knowledge page. Do not use Article for routes whose visible content is not
// truthfully an article-like resource.
func BuildArticleJSONLD(site Site, page Page) (string, error) {
	if strings.TrimSpace(site.URL) == "" {
		return "", errors.New("site URL is required")
	}
	if strings.TrimSpace(site.OrganizationName) == "" {
		return "", errors.New("organization name is required")
	}
	if strings.TrimSpace(page.Title) == "" {
		return "", errors.New("page title is required")
	}
	if page.PublishedAt.IsZero() {
		return "", errors.New("publication date is required")
	}

	canonical, err := canonicalURL(site.URL, page.Path)
	if err != nil {
		return "", err
	}

	modified := page.ModifiedAt
	if modified.IsZero() {
		modified = page.PublishedAt
	}

	data := ArticleJSONLD{
		Context: "https://schema.org",
		Type:    "Article",

		Headline:       page.Title,
		Description:    page.Description,
		DatePublished:  page.PublishedAt.Format("2006-01-02"),
		DateModified:   modified.Format("2006-01-02"),
		Keywords:       page.Tags,
		URL:            canonical,
		MainEntityPage: canonical,
		Author: OrganizationRef{
			Type: "Organization",
			Name: site.OrganizationName,
		},
	}

	b, err := json.MarshalIndent(data, "", "  ")
	if err != nil {
		return "", err
	}

	return string(b), nil
}

// BuildBreadcrumbJSONLD serializes a visible canonical breadcrumb hierarchy.
func BuildBreadcrumbJSONLD(site Site, crumbs []Breadcrumb) (string, error) {
	if strings.TrimSpace(site.URL) == "" {
		return "", errors.New("site URL is required")
	}
	if len(crumbs) == 0 {
		return "", errors.New("at least one breadcrumb is required")
	}

	items := make([]BreadcrumbListItem, 0, len(crumbs))
	for i, crumb := range crumbs {
		if strings.TrimSpace(crumb.Name) == "" {
			return "", errors.New("breadcrumb name is required")
		}

		itemURL, err := canonicalURL(site.URL, crumb.Path)
		if err != nil {
			return "", err
		}

		items = append(items, BreadcrumbListItem{
			Type:     "ListItem",
			Position: i + 1,
			Name:     crumb.Name,
			Item:     itemURL,
		})
	}

	data := BreadcrumbListJSONLD{
		Context:         "https://schema.org",
		Type:            "BreadcrumbList",
		ItemListElement: items,
	}

	b, err := json.MarshalIndent(data, "", "  ")
	if err != nil {
		return "", err
	}

	return string(b), nil
}

func canonicalURL(siteURL, pagePath string) (string, error) {
	base, err := url.Parse(strings.TrimSpace(siteURL))
	if err != nil {
		return "", err
	}
	if base.Scheme == "" || base.Host == "" {
		return "", errors.New("site URL must be absolute")
	}

	base.Path = strings.TrimRight(base.Path, "/") + "/"
	base.RawQuery = ""
	base.Fragment = ""

	rel, err := url.Parse(strings.TrimSpace(pagePath))
	if err != nil {
		return "", err
	}
	if rel.IsAbs() || rel.Host != "" {
		return "", errors.New("page path must be relative to the canonical site URL")
	}

	// Resolve from the site root even if the caller omits the leading slash.
	rel.Path = "/" + strings.TrimLeft(rel.Path, "/")
	resolved := base.ResolveReference(rel)
	resolved.RawQuery = ""
	resolved.Fragment = ""

	return resolved.String(), nil
}
