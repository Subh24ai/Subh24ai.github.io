# Subhash Gupta — Personal Website

Source for my homepage, served at <https://subh24ai.github.io>.

Built on the [acad-homepage](https://github.com/RayeRen/acad-homepage.github.io) Jekyll theme
(based on [minimal-mistakes](https://github.com/mmistakes/minimal-mistakes) and
[academicpages](https://github.com/academicpages/academicpages.github.io)), MIT-licensed.
Light/dark toggle adapted from [SwayamInSync.github.io](https://github.com/SwayamInSync/SwayamInSync.github.io) (MIT).

## Editing content

- **`_pages/about.md`** — the whole homepage (About, News, Experience, Projects, Skills, Achievements, Education).
- **`_config.yml`** — name, bio, location, avatar, social links, resume link.
- **`_data/navigation.yml`** — top navigation.
- **`_sass/_subh.scss`** — styles for the RAG trace block on the About section.

Profile photo: `assets/profile_picture.png` (square image, replace the SG placeholder).
Resume: `resume/Subhash_Gupta_Resume.pdf`.

## Deploy (GitHub Pages)

1. Create a **public** repo named exactly `Subh24ai.github.io`.
2. Push this folder to its `main` branch.
3. Settings → Pages → Source: *Deploy from a branch*, branch `main`, folder `/ (root)`.
4. The site goes live at <https://subh24ai.github.io> in a minute or two. Every push to `main` rebuilds it.

## Run locally

Needs Ruby 3.3 (the `github-pages` gem doesn't support Ruby 4 yet).

```bash
bundle install
bundle exec jekyll serve --livereload   # http://127.0.0.1:4000
```
