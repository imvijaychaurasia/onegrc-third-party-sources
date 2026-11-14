#!/usr/bin/env bash
# Downloads the corresponding source of osquery 5.24.1 and the libraries it pins: the osquery tag, then each pinned upstream commit
# listed in osquery-5.24.1-sources.tsv (GitHub commits as tarballs, other hosts by git). Usage: ./fetch-source.sh DEST_DIR
set -euo pipefail
dest="${1:?usage: fetch-source.sh DEST_DIR}"
here="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$dest"
curl -fsSL -o "$dest/osquery-5.24.1.tar.gz" "https://github.com/osquery/osquery/archive/refs/tags/5.24.1.tar.gz"
tail -n +2 "$here/osquery-5.24.1-sources.tsv" | while IFS=$'\t' read -r lib url commit; do
  base="${url%.git}"
  case "$base" in
    https://github.com/*) curl -fsSL -o "$dest/$lib-$commit.tar.gz" "$base/archive/$commit.tar.gz" ;;
    *) git clone --quiet "$url" "$dest/$lib" && git -C "$dest/$lib" checkout --quiet "$commit" && tar -C "$dest" -czf "$dest/$lib-$commit.tar.gz" "$lib" && rm -rf "$dest/$lib" ;;
  esac
  echo "fetched $lib $commit"
done
