terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAVXN2TQEOKI5RUH2M"
  secret_key = "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"
}
