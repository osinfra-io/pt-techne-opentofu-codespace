#!/usr/bin/env bash

set -euo pipefail

cd /workspaces

pids=()

while IFS= read -r repo; do
  if [ ! -d "$repo" ]; then
    echo "Cloning osinfra-io/${repo}..."
    (gh repo clone "osinfra-io/${repo}" -- --depth 1 || echo "Warning: failed to clone ${repo}, skipping") &
    pids+=("$!")
  else
    echo "Already exists: ${repo}"
  fi
done < <(gh repo list osinfra-io --json name --jq '.[] | select(.name|startswith("pt-")) | .name')

for pid in "${pids[@]}"; do
  wait "$pid"
done

echo "Done."
