# GitHub Codespace for OpenTofu IaC development

[![Dependabot](https://img.shields.io/github/actions/workflow/status/osinfra-io/pt-techne-opentofu-codespace/dependabot.yml?style=for-the-badge&logo=github&color=2088FF&label=Dependabot)](https://github.com/osinfra-io/pt-techne-opentofu-codespace/actions/workflows/dependabot.yml) [![Datadog Security Enabled](https://img.shields.io/badge/Datadog%20Security-Enabled-632CA6?style=for-the-badge&logo=datadog)](https://app.datadoghq.com/security/code-security/repositories?repository_id=pt-techne-opentofu-codespace)

## Purpose

This repository defines the standard browser-based development environment for the platform. Create a Codespace from this repository when you need the complete OpenTofu toolchain without configuring a local workstation.

## Startup behavior

On first start, the Codespace uses the image built by [`pt-techne-development-setup`](https://github.com/osinfra-io/pt-techne-development-setup), clones every accessible `osinfra-io/pt-*` repository into `/workspaces/`, and opens that directory as a multi-repository workspace.

GitHub authentication is inherited from the Codespace. Repositories that the current user cannot access are skipped by the clone process. Restarting the Codespace does not rerun `postCreateCommand`; rebuilding reruns setup but skips directories that already exist in the persistent `/workspaces/` volume, so newly accessible repositories may not be added and repositories that lost access may remain.
