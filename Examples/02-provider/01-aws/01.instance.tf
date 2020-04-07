provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "sample" {
  ami = "ami-0777ff5c030fe1d38"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-08a40e4443cb4ef02"]
}