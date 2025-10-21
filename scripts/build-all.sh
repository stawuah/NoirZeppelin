#!/bin/bash

# Build all Noir circuits

set -e

echo "🔨 Building NoirZeppelin circuits..."

modules=("access_control" "authentication" "token" "voting" "merkle" "cryptography")

for module in "${modules[@]}"; do
    echo "Building $module..."
    cd "circuits/$module"
    nargo compile
    cd ../..
    echo "✅ $module built successfully"
done

echo "🎉 All circuits built successfully!"