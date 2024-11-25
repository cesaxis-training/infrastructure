terraform {
  backend "s3" {
    endpoints = {
      s3 = "https://ams3.digitaloceanspaces.com"
    }

    bucket = "cesaxis-terraform"
    key    = "prod/terraform.tfstate"

    # Deactivate a few AWS-specific checks
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_s3_checksum            = true
    region                      = "us-east-1"
  }
}
