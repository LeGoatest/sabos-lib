# Laravel Blade example

Copy `resources/css/app.css` and `resources/views/example.blade.php` into a Laravel application, then adjust the import path to the installed package:

```css
@import "tailwindcss";
@import "tailwindcss-semantic-layer";
@source "../views";
```

The example demonstrates:

- Normal server-rendered form submission.
- CSRF protection.
- Preserved non-sensitive values.
- Error summary and inline errors.
- `aria-invalid` and `aria-describedby` relationships.
- Semantic layout and component classes.

Laravel validation and authorization remain application responsibilities.
