---
name: "Acorn Installation"
description: "Install and set up the Acorn theorem prover CLI. Use when the environment doesn't have Acorn installed or when the user needs to set up Acorn for the first time."
---

# Acorn Installation Skill

This skill helps install the Acorn theorem prover CLI in various environments.

## Standard Installation

If you have npm and normal internet access, install Acorn with:

```bash
npm i -g @acornprover/cli
```

## Restricted Network Environments

If `api.github.com` is blocked (common in some sandbox environments), the npm-installed `acorn` command will fail. Use this workaround to download and use the binary directly:

```bash
# Get latest version
LATEST=$(git ls-remote --tags https://github.com/acornprover/acorn.git | grep -o 'v[0-9.]*$' | sort -V | tail -1)

# Download binary
mkdir -p ~/.local/bin
curl -L "https://github.com/acornprover/acorn/releases/download/${LATEST}/acorn-${LATEST#v}-linux-x64" \
  -o ~/.local/bin/acorn
chmod +x ~/.local/bin/acorn

# Ensure ~/.local/bin is in PATH
export PATH="$HOME/.local/bin:$PATH"

# Now use acorn normally
acorn --version
```

The binary can be used directly without the npm wrapper.

## Verification

After installation, verify that Acorn is working by running:

```bash
acorn --version
```

## Running the Verifier

Once installed, you can verify Acorn proofs by running:

```bash
acorn
```

This should be run after every change to ensure proofs are verifiable.

## Progressive Disclosure

When invoked, this skill should:

1. First check if Acorn is already installed with `acorn --version`
2. If not installed, determine the environment (check for npm availability and network restrictions)
3. Choose the appropriate installation method
4. Verify the installation was successful
5. Confirm the user can run `acorn` to verify proofs
