#!/bin/bash
cat <<EOF > CHANGELOG.md
# Changelog

## [2.0.0]
- ⚠️ BREAKING: Removed index.html

## [1.1.0]
- Added: Gallery page

## [1.0.1]
- Fixed: Typo in about page
EOF

git add CHANGELOG.md
git commit -m "docs: add changelog"
git push
