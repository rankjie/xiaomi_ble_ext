#!/bin/bash

# Get current version from manifest.json
CURRENT_VERSION=$(grep -o '"version": "[^"]*"' custom_components/xiaomi_ble_ext/manifest.json | cut -d'"' -f4)

echo "Current version: $CURRENT_VERSION"
echo "Enter new version (without 'v' prefix):"
read NEW_VERSION

# Update manifest.json
sed -i.bak "s/\"version\": \"[^\"]*\"/\"version\": \"$NEW_VERSION\"/" custom_components/xiaomi_ble_ext/manifest.json
rm custom_components/xiaomi_ble_ext/manifest.json.bak

# Commit and tag
git add custom_components/xiaomi_ble_ext/manifest.json
git commit -m "chore: bump version to $NEW_VERSION"
git tag -a "v$NEW_VERSION" -m "Version $NEW_VERSION"

echo "Version bumped to $NEW_VERSION"
echo "Run 'git push && git push --tags' to trigger release"