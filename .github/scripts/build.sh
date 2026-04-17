#!/bin/bash
set -e
cd "$(dirname "$0")/.."

# Download dependencies
make download -j8

# Build firmware
make -j$(nproc) world

echo "Build completed"
