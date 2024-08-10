terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-bucket-tf-viswa"
    key    = "solar-system-cluster-state.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
