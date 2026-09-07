#!/usr/bin/env bash

set -euo pipefail

cd /workspaces

pids=()

repos_json=$(gh repo list osinfra-io --limit 1000 --json name)
mapfile -t repos < <(echo "$repos_json" | jq -r '.[] | select(.name|startswith("pt-")) | .name')

for repo in "${repos[@]}"; do
  if [ ! -d "$repo" ]; then
    echo "Cloning osinfra-io/${repo}..."
    (gh repo clone "osinfra-io/${repo}" -- --depth 1 || echo "Warning: failed to clone ${repo}, skipping") &
    pids+=("$!")
  else
    echo "Already exists: ${repo}"
  fi
done

for pid in "${pids[@]}"; do
  wait "$pid"
done

echo "Done."
