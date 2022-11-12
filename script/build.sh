#!/usr/bin/env bash

set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

# prepare
mkdir -p "$DIR/../tmp"

# clone
cd "$DIR/../tmp" || exit
git clone --depth=1 https://github.com/ssigwart/vscode-smarty.git vscode-smarty 2>/dev/null || true

# pull
cd "$DIR/../tmp/vscode-smarty" || exit
git clean -fd
git checkout .
git pull --rebase

# npm install
cd "$DIR/../tmp/vscode-smarty" || exit
npm install
npm run vscode:prepublish

# copy to dist
cd "$DIR/.." || exit
mkdir -p ./dist/smarty-language-server
cp -r ./tmp/vscode-smarty/server/out/* ./dist/smarty-language-server/
