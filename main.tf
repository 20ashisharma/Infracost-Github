terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
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
resource "aws_instance" "database_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t3a.medium"

  tags = {
    Name = "testinginfracost"
  }
}
resource "aws_instance" "test_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t3a.medium"

  tags = {
    Name = "testinginfracost"
  }
}
resource "aws_instance" "Github_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t3a.medium"

  tags = {
    Name = "testinginfracost"
  }
}
resource "aws_instance" "demo_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t3a.medium"

  tags = {
    Name = "testinginfracost"
  }
}
resource "aws_lambda_function" "hello_world" {
  function_name = "hello_world"
  role          = "arn:aws:lambda:us-east-1:aws:resource-id"
  handler       = "exports.test"
  runtime       = "nodejs12.x"
  filename      = "function.zip"
  memory_size   = 1024 # <<<<< Try changing this to 512 to compare costs
}
