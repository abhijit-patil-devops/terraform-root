terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "abhi-dev-9982"
    region         = "ap-south-1"
    key            = "batch-32/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
