#!/bin/bash

# Test all Noir circuits

set -e

echo "🧪 Testing NoirZeppelin circuits..."

modules=("access_control" "authentication" "token" "voting" "merkle" "cryptography")

for module in "${modules[@]}"; do
    echo "Testing $module..."
    cd "circuits/$module"
    nargo test
    cd ../..
    echo "✅ $module tests passed"
done

echo "🎉 All tests passed!"