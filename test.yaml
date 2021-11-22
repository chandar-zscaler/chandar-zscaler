terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}


resource "aws_instance" "app_seraver" {
  associate_public_ip_address = true
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  monitoring = false

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_lambda_function" "tfer--418408845322-8e2D-acme-082D-dev-8e2D-analysis" {
  environment {
    variables{
      access_key = "AKIAIOSFODNN7EXAMPLE"
      secret_key = "wJalrXUtnFEMI/K7MDENG/bPXRf1CYEXAMPLEKEY"
    }
  }
}
