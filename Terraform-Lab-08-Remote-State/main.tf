terraform {
  backend "s3" {
    bucket = "tevfik-terraform-state-099308196472"
    key    = "lab08/terraform.tfstate"
    region = "us-east-1"
  }

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

resource "aws_s3_bucket" "terraform_state" {
  bucket = "tevfik-terraform-state-099308196472"

  tags = {
    Name        = "Terraform Remote State Bucket"
    Environment = "learning"
  }
}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

output "state_bucket_name" {
  value = aws_s3_bucket.terraform_state.bucket
}