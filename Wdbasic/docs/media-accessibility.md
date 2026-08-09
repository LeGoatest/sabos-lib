# WDBASIC Media Accessibility Contract

> **Authority:** Binding media-equivalence contract  
> **Core entry point:** [`README.md`](README.md)  
> **Accessibility dependency:** [`tokens/accessibility.md`](tokens/accessibility.md)

This contract governs audio, video, animation, carousels, before-and-after media, transcripts, captions, and audio description.

## 1. Media inventory

Every adopting project should identify media by type:

- Prerecorded audio-only.
- Prerecorded video-only.
- Prerecorded synchronized audio and video.
- Live synchronized media.
- Animation or motion graphics.
- Interactive image comparison.
- Carousel or slideshow.
- Decorative media.

The required equivalent depends on the media type and declared WCAG level.

## 2. Prerecorded audio-only and video-only

Prerecorded audio-only content requires an equivalent transcript when the content is not already provided in adjacent text.

Prerecorded video-only content requires an equivalent description or audio track that communicates the meaningful visual information.

## 3. Captions

Prerecorded synchronized media must provide accurate captions.

Live synchronized media must provide live captions when required by the declared conformance level.

Caption quality must include:

- Spoken dialogue.
- Relevant speaker identification.
- Meaningful non-speech audio.
- Timing synchronized with the media.
- Correct language.
- Review of automatic captions before publication when accuracy matters.

Uncorrected automatic captions are not presumed equivalent.

## 4. Audio description

Prerecorded video must provide audio description when meaningful visual information is not available in the existing audio track and the applicable success criterion requires it.

An integrated description may be sufficient when the ordinary narration already communicates all important visual information.

## 5. Transcripts

A transcript should:

- Be adjacent or directly linked.
- Identify speakers when necessary.
- Include meaningful sound and visual information.
- Follow a readable heading and paragraph structure.
- Remain available without requiring the media player.
- Be maintained when the media changes.

A transcript does not automatically replace captions or audio description when those are separately required.

## 6. Player controls

Media controls must be:

- Keyboard operable.
- Programmatically named.
- Visible at zoom.
- Understandable without icon color alone.
- Operable by touch and pointer.
- Compatible with captions, transcript access, playback position, volume, pause, and fullscreen where provided.

Do not autoplay audio. Automatically moving media must provide pause, stop, or hide behavior when applicable.

## 7. Carousels and slideshows

A carousel must define:

- Previous and next controls.
- Current item and total count.
- Pause control when movement is automatic.
- Keyboard operation.
- Focus behavior.
- Non-drag operation.
- Reduced-motion behavior.
- Meaningful source order.

Automatic movement must not resume unexpectedly after a user pauses it.

## 8. Before-and-after media

Before-and-after components must:

- Identify each state in text.
- Provide keyboard and non-drag operation.
- Preserve access to both images without the interactive control.
- Use accurate alternative text and captions.
- Avoid exaggerated edits, mismatched framing, or deceptive comparisons.
- State material differences in lighting, crop, date, or conditions when relevant.

## 9. Animation, flashes, and motion

- Content must not flash beyond accepted thresholds.
- Essential information must not depend on animation.
- Motion actuation must have a conventional control and a disable mechanism.
- Reduced-motion preferences must remove nonessential movement.
- Parallax, simulated depth, zoom, or rapid background movement is prohibited when it creates discomfort or obscures content.

## 10. Media metadata

Record when applicable:

- Title and purpose.
- Source and permission.
- Publication date.
- Language.
- Caption file.
- Transcript file.
- Audio-description source.
- Poster image.
- Alternative text.
- Duration.
- Review owner.

## 11. Validation matrix

Test media with:

- Keyboard only.
- Screen reader.
- Captions enabled.
- Audio muted.
- Video hidden or unavailable.
- Reduced motion.
- Zoom and narrow width.
- Slow network or failed third-party embed.
- Direct transcript access.

Third-party players remain subject to this contract. A provider limitation must be documented and may prevent a conformance claim.
