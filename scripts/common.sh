#!/usr/bin/env bash

slugify_text() {
  local input="$*"
  local normalized=''

  if command -v iconv >/dev/null 2>&1; then
    normalized="$({ printf '%s' "$input" | iconv -f UTF-8 -t ASCII//TRANSLIT 2>/dev/null || true; })"
  else
    normalized="$input"
  fi

  [ -n "$normalized" ] || normalized="$input"

  printf '%s' "$normalized" \
    | tr '[:upper:]' '[:lower:]' \
    | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//; s/--+/-/g'
}

resolve_idea_key() {
  local input="$*"
  local slug=''

  slug="$(slugify_text "$input")"
  [ -n "$slug" ] || slug="$input"

  if [ -d "$ROOT/docs/assessments/$input" ] || [ -d "$ROOT/docs/research/$input" ]; then
    printf '%s\n' "$input"
  elif [ -d "$ROOT/docs/assessments/$slug" ] || [ -d "$ROOT/docs/research/$slug" ]; then
    printf '%s\n' "$slug"
  else
    printf '%s\n' "$slug"
  fi
}

bootstrap_file() {
  local source_path="$1"
  local target_path="$2"

  if [ -f "$target_path" ]; then
    echo "  keep: $target_path"
    return
  fi

  cp "$source_path" "$target_path"
  echo "  new:  $target_path"
}
