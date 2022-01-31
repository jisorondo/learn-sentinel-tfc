terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.0"
    }
  }

  required_version = ">= 0.15"

  backend "remote" {
    hostname     = "ptfe.havananet.us"
    organization = "havananet"

    workspaces {
      name = "sentinel-example"
    }
  }

}
