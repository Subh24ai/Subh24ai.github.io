#!/usr/bin/env bash
# Local preview: http://127.0.0.1:4000 (auto-reloads on edits)
cd "$(dirname "$0")"
bundle exec jekyll serve --livereload
