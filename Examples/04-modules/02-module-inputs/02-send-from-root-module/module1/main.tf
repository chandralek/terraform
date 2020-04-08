resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo Hello to ${var.NAME}"
  }
}

variable "NAME" {}