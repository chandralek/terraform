module "module1" {
  source = "./module1"
  NAME = var.NAME
}

variable "NAME" {}