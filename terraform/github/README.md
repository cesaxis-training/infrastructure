# GitHub Infrastructure as Code

This Terraform project manages GitHub infrastructure for the `cesaxis-training` organization, including repositories, members, and configurations.

## Prerequisites

- Terraform >= 1.9.0
- [Just](https://github.com/casey/just) command runner
- DigitalOcean Spaces account (for state storage)
- GitHub personal access token

## Setup

1. Copy the environment template and fill in the required values:

   ```bash
   cp .env.example .env
   ```

2. Configure the following environment variables:
   - `AWS_ACCESS_KEY_ID`: DigitalOcean Spaces access key
   - `AWS_SECRET_ACCESS_KEY`: DigitalOcean Spaces secret key
   - `GITHUB_TOKEN`: GitHub personal access token with appropriate permissions

## Available Commands

The project uses `just` as a command runner. Available commands:

- `just install` - Initialize Terraform
- `just plan` - Preview changes before applying
- `just apply` - Apply the Terraform configuration
- `just lint` - Format Terraform files
- `just upgrade` - Upgrade Terraform providers
- `just reconfigure` - Reconfigure Terraform backend

## State Management

The Terraform state is stored in DigitalOcean Spaces:

- Bucket: `cesaxis-terraform`
- Key: `github/terraform.tfstate`
- Endpoint: `ams3.digitaloceanspaces.com`

## Managed Resources

Currently manages:

- GitHub repositories
  - `infrastructure` repository with public visibility and relevant topics

## Contributing

1. Create a new branch for your changes
2. Run `just lint` to ensure proper formatting
3. Run `just plan` to verify your changes
4. Create a pull request with your changes

## License

[Add your license information here]
