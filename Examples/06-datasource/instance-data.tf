data "aws_instance" "foo" {
  instance_id = "i-instanceid"
}

output "PUBLICIP" {
  value = data.aws_instance.foo.public_ip
}

provider "aws" {
  region = "us-west-2"
}