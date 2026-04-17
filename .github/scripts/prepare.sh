#!/bin/bash
set -e

cd "$(dirname "$0")/.."

# Prepare feeds and config from config-repo
cp config-repo/.feeds.conf feeds.conf.default
cp config-repo/.config .config
chmod +x scripts/*.sh

# Update and install feeds
./scripts/feeds update -a
./scripts/feeds install -a

echo "Feeds prepared successfully"
