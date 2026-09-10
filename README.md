# Michael Hahsler's homepage

This repository contains the Jekyll source for a GitHub Pages site. The legacy
server tree in `old_home/` is intentionally ignored: it includes generated
files and large/private course archives that should not be published.

## Preview locally

```sh
bundle install
bundle exec jekyll serve
```

Open <http://localhost:4000/home/>. The production site is deployed by the
workflow in `.github/workflows/pages.yml` whenever `main` is updated.

In the repository's **Settings → Pages**, select **GitHub Actions** as the
source. If the repository is renamed to `mhahsler.github.io` or a custom domain
is added, set `baseurl: ""` in `_config.yml`.
