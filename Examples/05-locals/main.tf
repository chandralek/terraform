provider "aws" {
  region = "us-west-2"
}

## cart service
# cart-service-dev-aws-us-west-2.devopsb46.xyz

variable "SERVICE_INFO" {
  default = {
    name = "cart",
    env  = "dev",
    region = "us-west-2",
    domain = "devopsb46.xyz"
  }
}

locals {
  name = "${var.SERVICE_INFO["name"]}-service-${var.SERVICE_INFO["env"]}-aws-${var.SERVICE_INFO["region"]}-${var.SERVICE_INFO["domain"]}"
}

output "FULL_NAME" {
  value = local.name
}
