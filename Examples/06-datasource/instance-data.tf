data "aws_instance" "foo" {
  instance_id = "i-0e9cda17efa36c441"
}

output "PUBLICIP" {
  value = data.aws_instance.foo.public_ip
}

provider "aws" {
  region = "us-west-2"
}