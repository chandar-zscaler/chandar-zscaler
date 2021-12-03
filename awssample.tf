terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

module "test2" {
  source = "./modules/test"
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}


resource "aws_instance" "app_searver" {
  #ts:skip=AWS.AI.LM.HIGH.0070 I am skipping it for fun
  associate_public_ip_address = true
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  monitoring = false

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
