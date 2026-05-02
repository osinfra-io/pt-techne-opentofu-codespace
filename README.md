# <img align="left" width="45" height="45" src="https://user-images.githubusercontent.com/1610100/201473670-e0e6bdeb-742f-4be1-a47a-3506309620a3.png"> GitHub Codespace for OpenTofu IaC development

[![Dependabot](https://img.shields.io/github/actions/workflow/status/osinfra-io/pt-techne-opentofu-codespace/dependabot.yml?style=for-the-badge&logo=github&color=2088FF&label=Dependabot)](https://github.com/osinfra-io/pt-techne-opentofu-codespace/actions/workflows/dependabot.yml) [![Datadog Security Enabled](https://img.shields.io/badge/Datadog%20Security-Enabled-632CA6?style=for-the-badge&logo=datadog)](https://app.datadoghq.com/security/code-security/repositories?repository_id=pt-techne-opentofu-codespace)

## Overview

Once you go down the road of Infrastructure as Code (IaC), what you will find is onboarding developers takes time and can be confusing for people new to development, and that will limit contributions.

- Standardized IaC developer environments
- Simple onboarding so new IaC developers can contribute easier

## Multi-repo workspace

When a codespace starts, all `pt-*` repositories in the `osinfra-io` organization are automatically cloned into `/workspaces/`. VS Code opens `/workspaces` directly so all repositories are immediately visible and navigable in the file explorer.