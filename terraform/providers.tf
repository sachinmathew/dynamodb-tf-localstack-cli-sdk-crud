provider "aws" {
    region = "us-east-1"
    access_key = "mock-access-key"
    secret_key = "mock-secret-key"
    skip_credentials_validation = true
    skip_requesting_account_id  = true

    endpoints{
        dynamodb = "http://dynamodb.localhost.localstack.cloud:4566"
    }

}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}