variable "NAME" {
  default = "chandralekha"
}

variable "BOOLEAN" {
  default = true
}

variable "NUMBER" {
  default = 100
}

variable "LIST" {
  default = ["apple","Mango"]
}

variable "MAP" {
  default = {
    "red" ="apple",
    "yellow" ="Mango"}
}

variable "SAMPLE" {
}

output "SAMPLE" {
  value = var.NAME
}

output "MAP" {
  value = var.MAP["red"]
}

output "LIST" {
  value = var.LIST[0]
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