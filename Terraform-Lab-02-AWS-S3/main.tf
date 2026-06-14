terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "lab_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "Terraform Lab 02"
    Environment = "learning"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.lab_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.lab_bucket.arn
}