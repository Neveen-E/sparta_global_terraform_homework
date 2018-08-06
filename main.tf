provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "app_instance" {
  ami = "ami-0ceeb16a48501187d"
  instance_type = "t2.micro"
  tags {
    Name = "app-neveen"
  }
}

resource "aws_vpc" "main" {
   cidr_block = "10.0.0.0/16"
}
