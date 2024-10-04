terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
  # backend "s3" {
  #   bucket = "my-terraform-state-pvlp"
  #   key    = "prod/aws_infra"
  #   region = "us-east-1"
  # }
  # backend "s3" {
  # }
  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "pvlp-test-org"

  #   workspaces {
  #     name = "my-aws-app"
  #   }
  # }
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.2.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }
}
