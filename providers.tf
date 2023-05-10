terraform {
  required_version = ">= 1.4.6"
  required_providers {
    aws = {
      version = "4.57.1"
    }
  }
}

provider "aws" {
  region = var.region
  profile = var.profile
  default_tags {
    tags = {
      owner = var.my_name
    }
  }
}