provider "aws" {
  region = "us-west-2"
}


terraform {
  backend "s3" {
    bucket = "tfstates-demo"
    key    = "sample/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-locking"
  }
}

resource "aws_instance" "sample" {
  ami = "ami-0777ff5c030fe1d38"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-08a40e4443cb4ef02"]

}

resource "null_resource" "none" {
  provisioner "local-exec" {
    command = "sleep 90"
  }
}
