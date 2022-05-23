#!/bin/bash

set -e

MDBOOK_URL="https://github.com/rust-lang/mdBook/releases/download/v0.4.18/mdbook-v0.4.18-x86_64-unknown-linux-gnu.tar.gz"

curl -L --output "mdbook.tar.gz" $MDBOOK_URL
tar -xvzf mdbook.tar.gz
chmod +x mdbook

./mdbook build