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
  #profile = "default"
  region  = "us-east-1"
  access_key = "AKIAZRKSNYAUOSXFZ3N3"
  secret_key = "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"

}


resource "aws_instance" "mat_first-instance" {
  ami                    = "ami-08e4e35cccc6189f4"
  instance_type          = "t2.micro"
  key_name               = "ec2-mat-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0cfdc555d522ff1b2"]
  subnet_id              = "subnet-0cda3383c4912c3bd"


   tags = {
    Terraform   = "true"
    Environment = "Terra"
    Name = "mat_tera-instance"
  }
}

