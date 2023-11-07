terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.1"
    }
  }
  cloud {
    organization = "estebanmorenoit"

    workspaces {
      name = "2-tier-architecture-terraform"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}