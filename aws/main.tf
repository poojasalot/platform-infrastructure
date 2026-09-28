terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "engineering_artifacts" {
  bucket = var.bucket_name

  tags = {
    Name        = "engineering-artifacts"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "engineering_artifacts" {
  bucket = aws_s3_bucket.engineering_artifacts.id

  versioning_configuration {
    status = "Enabled"
  }
}