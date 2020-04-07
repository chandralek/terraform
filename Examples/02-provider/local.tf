variable "DATA" {
  default = "Hello-world"
}

resource "local_file" "foo" {
  content     = var.DATA
  filename = "/tmp/foo.bar"
}