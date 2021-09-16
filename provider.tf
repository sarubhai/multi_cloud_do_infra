# Name: provider.tf
# Owner: Saurav Mitra
# Description: This terraform config will Configure Terraform Providers
# https://www.terraform.io/docs/language/providers/requirements.html

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Configure Terraform DigitalOcean Provider
# https://registry.terraform.io/providers/digitalocean/digitalocean/latest

# $ export DIGITALOCEAN_TOKEN="AccessToken"

provider "digitalocean" {
  # Configuration options
}
