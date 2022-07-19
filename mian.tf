terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-west-2"
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
