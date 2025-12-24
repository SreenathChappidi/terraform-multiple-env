terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.26.0"
    }
  }

  backend "s3" {
    bucket = "86s-rs-demo"
    key    = "workspace-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}


provider "aws" {
  region = "us-east-1"
}