# Website contribution guide

This repository contains Michael Hahsler's academic website. Preserve a calm,
professional, information-first design and make new work look like it belongs
with the existing pages. Prefer extending an established pattern over adding a
one-off component.

## Repository map

- `_config.yml` contains site-wide metadata, plugins, defaults, and deployment
  paths.
- `_data/` is the source of truth for repeated structured content such as
  navigation, profile details, flagship projects, and software projects.
- `_includes/` contains reusable Liquid/HTML fragments.
- `_layouts/` controls page, post, and home-page structure.
- `assets/main.scss` contains the visual system and all custom responsive
  styles on top of Minima.
- Top-level Markdown files are primary pages; dated news belongs in `_posts/`.
- `assets/img/` is the preferred location for current site imagery. `images/`
  also contains legacy and profile assets still used by the site.
- `docs/` contains downloadable documents and their previews.
- `old_home/` is intentionally excluded from the site. Do not publish, index,
  or reorganize it.

## Start with existing patterns

Before changing a page, inspect the closest existing example and the related
rules in `assets/main.scss`.

- Use `layout: page` for primary content pages and `layout: post` for news.
- Primary pages generally have a short hero followed by clearly named sections.
  Follow the structure used by `research.md`, `software.md`, `teaching.md`,
  `students.md`, and `publications/index.md`.
- Reuse `.profile-eyebrow`, `.profile-actions`, `.button`, `.project-focus`,
  `.section-intro`, and existing card/grid patterns where their semantics fit.
- Keep recurring content in `_data/` and render it through an include or Liquid
  loop. Do not duplicate data across pages.
- Add a reusable include when the same substantial markup appears more than
  once. Keep page-specific markup in the page itself.
- Put shared styles in `assets/main.scss`; do not add inline `style` attributes
  or page-local style blocks.

## Visual language

- Use the Sass color variables already defined at the top of `assets/main.scss`.
  Red is for headings and emphasis, SMU blue is for controls, and standard blue
  is for recognizable text links. Avoid introducing near-duplicate colors.
- Keep the existing content width, typography, spacing rhythm, rounded corners,
  light borders, and restrained shadows.
- Buttons and navigation links should use the shared `.button` treatment.
  Reserve `.button-primary` for one clearly preferred action, not every link.
- Prefer two- or three-column grids on wide screens and collapse them to one
  column at the existing mobile breakpoints. Every new layout must remain usable
  at narrow widths without horizontal scrolling.
- Use images only when they add information. Preserve their aspect ratio and
  optimize large raster assets; prefer WebP for new photographic or illustrated
  content and SVG for suitable logos or diagrams.

## Content and page metadata

- Write in a concise, first-person academic voice on profile and research pages.
  Favor plain language, concrete descriptions, and descriptive link text.
- Every public page needs YAML front matter with the appropriate `layout`, a
  concise `title`, a stable trailing-slash `permalink`, and a useful
  `description` for search and sharing.
- Every news post needs `layout: post`, a date-prefixed filename, `title`,
  `categories`, a one-sentence `summary`, and a thumbnail with meaningful alt
  text. When an image is used for sharing, also provide `image.path`, `width`,
  `height`, and `alt`.
- Update existing data entries rather than hard-coding changing facts such as
  office hours, current term, courses, navigation, or project metadata.
- Preserve the site's naming and capitalization conventions, including product,
  package, institution, and course names.

## Links, Liquid, and assets

- Pass internal paths through `relative_url`, for example
  `{{ '/research/' | relative_url }}`, so previews and project-site deployments
  work with a non-empty base URL.
- Use direct HTTPS URLs for external destinations. Do not open links in a new
  tab unless there is a specific requirement.
- Escape variable text rendered in HTML when appropriate, especially titles and
  labels. Follow the whitespace-control style already used in Liquid templates.
- Use root-relative site paths in data files and resolve them in the rendering
  include when internal URLs need `relative_url` handling.
- Do not rename or move an existing public URL or asset without checking every
  reference and providing a compatibility path when needed.

## Accessibility and semantics

- Keep one meaningful page-level `h1`, then use headings in logical order.
- Prefer semantic elements (`main`, `nav`, `section`, `article`, `figure`,
  `time`, lists) over generic containers.
- Give informative images concise alt text; use empty alt text for decorative
  images. Do not repeat adjacent captions verbatim in alt text.
- Label navigation and grouped actions. Connect section labels with
  `aria-labelledby` when following the existing hero/card patterns.
- Preserve visible keyboard focus. Interactive behavior must work with a
  keyboard and must not rely on color, hover, or pointer input alone.
- Maintain readable color contrast and respect flexible text sizing. Avoid fixed
  heights for text containers.
- Add `loading="lazy"` and `decoding="async"` to below-the-fold images. Do not
  lazy-load the primary above-the-fold image.

## Validation

After a change, run the smallest relevant checks and then build the full site:

```sh
bundle exec jekyll build
```

For layout or style work, also preview locally with:

```sh
bundle exec jekyll serve
```

Review the affected page at both desktop and mobile widths. Check the rendered
heading order, focus states, image alt text, internal links, and browser console.
The production workflow builds with Jekyll under Ruby 3.3, so keep local changes
compatible with the versions pinned in `Gemfile` and `Gemfile.lock`.

## Keep changes focused

- Do not edit generated `_site/` output or vendored dependencies.
- Do not combine content rewrites, visual redesigns, and dependency upgrades
  unless the task requires all of them.
- Preserve unrelated user changes in a dirty working tree.
- When introducing a new visual pattern is truly necessary, define reusable,
  purpose-based class names and document responsive behavior alongside the base
  styles.
