#!/usr/bin/env bash

set -ex

curl -sLo "bin/opam-2.0.0-x86_64-linux" "https://github.com/ocaml/opam/releases/download/2.0.0/opam-2.0.0-x86_64-linux"
curl -sLo "bin/opam-2.0.0-x86-linux" "https://github.com/ocaml/opam/releases/download/2.0.0/opam-2.0.0-i686-linux"
curl -sLo "bin/opam-2.0.0-x86_64-darwin" "https://github.com/ocaml/opam/releases/download/2.0.0/opam-2.0.0-x86_64-darwin"

chmod +x bin/*

sha256sum --quiet -c checksums || (echo "Failed to verify files"; exit 1)
