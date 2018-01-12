#!/bin/bash
VERSION=$(grep -E 'OpenAPI spec version: [0-9x\.]+' api.ts | cut -d" " -f6)
SED='s/\"version\": \".*\"/\"version\": \"'$VERSION'\"/g'
sed -e "$SED" package.json > new_package.json
mv new_package.json package.json
echo Updated package to API version $VERSION
