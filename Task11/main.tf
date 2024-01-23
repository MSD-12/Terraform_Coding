variable "name" {
  type = string  
}

variable "age" {
  type = number
}

output "user" {
  value = "hello, ${var.name} and you are ${var.age} year old"
}