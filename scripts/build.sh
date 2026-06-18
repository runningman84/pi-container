#!/usr/bin/env bash
# Builds the pi-coding-agent image with Docker or Apple container CLI.
set -euo pipefail

IMAGE_TAG="${IMAGE_TAG:-pi-coding-agent:local}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

if command -v docker >/dev/null 2>&1; then
  CONTAINER_CLI="docker"
elif command -v container >/dev/null 2>&1; then
  CONTAINER_CLI="container"
else
  echo "Neither 'docker' nor 'container' CLI is installed or on PATH." >&2
  exit 1
fi

"$CONTAINER_CLI" build \
  --tag "$IMAGE_TAG" \
  --file "$REPO_ROOT/Containerfile" \
  "$REPO_ROOT"
