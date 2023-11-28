terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
  backend "s3" {
    bucket         	   = "aws-budgets-bucket"
    key              	 = "statefile"
    region         	   = "us-east-1"
  }
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "web_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.medium"

  tags = {
    Name = "testinginfracost"
  }
}
