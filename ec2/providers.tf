terraform {
    backend "s3" {
        bucket         = "asaf-vault-acct-tfstate"
        key            = "workspacebased/ec2-new.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform_locks"
        role_arn       = "arn:aws:iam::300301835588:role/atlantis"
        profile = "asaf-aws-sandbox"
    }
}

provider "aws" {
  region = var.aws_region
  # profile = var.aws_profile
  assume_role {
    role_arn       = "arn:aws:iam::300301835588:role/atlantis"
  }
}
