# Example: Modular PHP MVC Website

**Status:** Illustrative, not a DuckyCMS source-tree assertion. This variant starts from the user's established Core/Controllers/Models/Services/Views convention and adds optional capability modules where useful.

~~~text
project/
├── .env.example
├── .gitignore
├── README.md
├── AGENTS.md
├── CHANGELOG.md
├── app/
│   ├── Core/
│   │   ├── Application.php
│   │   ├── Router.php
│   │   ├── Controller.php
│   │   ├── Middleware.php
│   │   └── View.php
│   ├── Controllers/
│   │   ├── HomeController.php
│   │   └── AuthController.php
│   ├── Models/
│   ├── Services/
│   ├── Routes/
│   │   └── web.php
│   ├── Views/
│   │   ├── layouts/
│   │   ├── components/
│   │   └── pages/
│   └── Modules/
│       ├── Gallery/
│       │   ├── Controllers/
│       │   ├── Models/
│       │   ├── Services/
│       │   └── Views/
│       └── ClientHub/
│           ├── Controllers/
│           ├── Models/
│           └── Views/
├── config/
├── database/
│   └── migrations/
├── storage/
│   ├── logs/
│   └── private/
├── public_html/
│   ├── index.php
│   └── assets/
│       ├── css/
│       ├── js/
│       ├── images/
│       ├── icons/
│       └── fonts/
├── docs/
├── scripts/
└── tests/
~~~

**Ownership:** Core handles common framework plumbing; modules own their features and declare narrow interfaces; global Controllers/Views may remain for small shared website pages. Keep private storage outside public_html. API routes may be registered centrally or under feature modules; avoid two competing route registries.

**Important:** Feature folders do not by themselves confer HMVC behavior. Introduce hierarchical controller composition only if the runtime and UI demands justify it. In a live project verify namespace/autoload, routing, database permissions and deployment before moving files.
