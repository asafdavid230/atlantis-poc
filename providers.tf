terraform {
    backend "s3" {
        bucket         = "asaf-vault-acct-tfstate"
        key            = "workspacebased/ec2.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform_locks"
        role_arn       = "arn:aws:iam::300301835588:role/eksctl-learn-eks-addon-iamserviceaccount-kub-Role1-HBDXIKKQU5ED"
    }
}

provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn       = "arn:aws:iam::300301835588:role/eksctl-learn-eks-addon-iamserviceaccount-kub-Role1-HBDXIKKQU5ED"
  }
}
