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
      name = "3-tier-architecture"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}