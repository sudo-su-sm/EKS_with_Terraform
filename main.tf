terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "s3-backend-bucket-terraform-eks"
    key            = "terraform.tfstate"
    region         = var.region
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

provider "aws" {
    region = var.region
}