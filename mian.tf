terraform {
  required_version = ">= 0.12"
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

provider "aws" {
  region = var.aws_region
}
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name =  "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name =  "owner-alias"
    values = ["amazon"]
  }
}
