# Infrastructure

This repository contains Infrastructure as Code (IaC) for managing our cloud resources and configuration.

## Overview

The repository manages infrastructure across multiple platforms:

- GitHub organization and repository configurations
- DigitalOcean resources (droplets, networks, etc.)
- Server configuration and maintenance using Ansible

## Structure

```
.
├── terraform/ # Infrastructure as Code
│ ├── github/ # GitHub organization and repository management
│ └── digitalocean/ # DigitalOcean resources
└── ansible/ # Server configuration and maintenance
```

## Prerequisites

- [Terraform](https://www.terraform.io/) (>= 1.0.0)
- [Ansible](https://www.ansible.com/) (>= 2.9)
- Access tokens for GitHub and DigitalOcean

## Getting Started

1. Clone this repository
2. Configure your credentials (see configurations in each directory)
3. Run Terraform to provision infrastructure
4. Use Ansible to configure servers

## Usage

Detailed usage instructions for each component can be found in their respective directories.
