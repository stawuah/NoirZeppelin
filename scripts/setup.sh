#!/bin/bash

# NoirZeppelin Setup Script

set -e

echo "🔧 Setting up NoirZeppelin development environment..."

# Check prerequisites
echo "📋 Checking prerequisites..."

if ! command -v nargo &> /dev/null; then
    echo "❌ Noir not found. Installing..."
    curl -L https://raw.githubusercontent.com/noir-lang/noirup/main/install | bash
    noirup
fi

if ! command -v forge &> /dev/null; then
    echo "❌ Foundry not found. Installing..."
    curl -L https://foundry.paradigm.xyz | bash
    foundryup
fi

if ! command -v node &> /dev/null; then
    echo "❌ Node.js not found. Please install Node.js >= 18"
    exit 1
fi

echo "✅ Prerequisites check complete"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

echo "🔨 Building circuits..."
./scripts/build-all.sh

echo "🔨 Building contracts..."
cd contracts && forge build && cd ..

echo "🔨 Building SDK..."
cd sdk && npm run build && cd ..

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Run tests: npm test"
echo "  2. Check examples: cd examples/web2/private-auth"
echo "  3. Read docs: cd docs && mdbook serve"