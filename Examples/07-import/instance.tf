resource "aws_instance" "example" {
  # ...instance configuration...
}

provider "aws" {
  region = "us-west-2"
}
#terraform import aws_instance.example i-abcd1234