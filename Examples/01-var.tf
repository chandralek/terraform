variable "NAME" {
  default = "chandralekha"
}

variable "BOOLEAN" {
  default = true
}

variable "NUMBER" {
  default = 100
}

output "NAME" {
  value = var.NAME
}

output "BOOLEAN" {
  value = var.BOOLEAN
}

output "NUMBER" {
  value = var.NUMBER
}