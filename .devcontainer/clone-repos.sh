#!/usr/bin/env bash

set -euo pipefail

repos=(
  pt-ai-context
  pt-arche-ai-context
  pt-arche-child-module-template
  pt-arche-core-helpers
  pt-arche-datadog-google-integration
  pt-arche-google-cloud-sql
  pt-arche-google-kubernetes-engine
  pt-arche-google-network
  pt-arche-google-project
  pt-arche-google-storage-bucket
  pt-arche-kubernetes-cert-manager
  pt-arche-kubernetes-datadog-operator
  pt-arche-kubernetes-istio
  pt-arche-kubernetes-opa-gatekeeper
  pt-corpus
  pt-corpus-ai-context
  pt-ekklesia-ai-context
  pt-ekklesia-docs
  pt-kryptos
  pt-kryptos-ai-context
  pt-logos
  pt-logos-ai-context
  pt-pneuma
  pt-pneuma-ai-context
  pt-pneuma-istio-test
  pt-techne-agents
  pt-techne-ai-context
  pt-techne-development-setup
  pt-techne-mcp-server
  pt-techne-misc-workflows
  pt-techne-opentofu-workflows
  pt-techne-pre-commit-hooks
)

cd /workspaces

for repo in "${repos[@]}"; do
  if [ ! -d "$repo" ]; then
    echo "Cloning osinfra-io/${repo}..."
    gh repo clone "osinfra-io/${repo}" || echo "Warning: failed to clone ${repo}, skipping"
  else
    echo "Already exists: ${repo}"
  fi
done

echo "Done."
