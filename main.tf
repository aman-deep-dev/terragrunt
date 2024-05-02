terraform {
  required_version = "~> 1.8.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "ev-terragrunt-user"
}


module "vpc" {
  source = "./modules/network"
}

module "compute" {
  source = "./modules/compute"
}

