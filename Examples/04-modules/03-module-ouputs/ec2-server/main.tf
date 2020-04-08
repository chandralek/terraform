resource "aws_instance" "sample" {
  ami = "ami-0777ff5c030fe1d38"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.SECURITY_GROUP]
}

variable "SECURITY_GROUP"  {

}