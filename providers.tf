terraform {
    backend "s3" {
        bucket         = "asaf-vault-acct-tfstate"
        key            = "workspacebased/ec2.tfstate"
        region         = "us-east-1"
        profile        = "asaf-aws-sandbox"
        dynamodb_table = "terraform_locks"
    }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
