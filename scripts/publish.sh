#!/bin/sh
# Match xnaut.dev: Forgejo is updated first; GitHub Actions deploys after the second push.
set -eu
cd "$(dirname "$0")/.."
git push forgejo main
git push origin main
