#!/bin/bash
set -e

# Check if acorn is already installed and working
if command -v acorn &> /dev/null; then
    if acorn --version &> /dev/null; then
        echo "✓ Acorn is already installed: $(acorn --version)"
        exit 0
    fi
fi

echo "Installing Acorn..."

# Get latest version
echo "Fetching latest version..."
LATEST=$(git ls-remote --tags https://github.com/acornprover/acorn.git | grep -o 'v[0-9.]*$' | sort -V | tail -1)
VERSION=${LATEST#v}  # strip 'v' prefix

echo "Latest version: ${LATEST}"

# Download binary
echo "Downloading Acorn binary..."
mkdir -p ~/.local/bin
curl -L "https://github.com/acornprover/acorn/releases/download/${LATEST}/acorn-${VERSION}-linux-x64" \
  -o ~/.local/bin/acorn

chmod +x ~/.local/bin/acorn

# Verify installation
echo ""
if ~/.local/bin/acorn --version; then
    echo ""
    echo "✓ Acorn installed successfully!"
    echo ""
    echo "Note: Make sure ~/.local/bin is in your PATH"
    echo "You can run 'acorn' to verify proofs"
else
    echo "✗ Installation failed - acorn binary is not working"
    exit 1
fi
