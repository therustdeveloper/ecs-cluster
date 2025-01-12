# Terraform Settings Block
terraform {
  required_version = ">= 1.3.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.46"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 3.2"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket         = "tfdev.godeveloper.net"
    key            = "dev/network/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfdev.godeveloper.net"
  }
}

# Terraform Provider Block
provider "aws" {
  region = var.aws_region
}

provider "http" {
  # Configuration Options
}
