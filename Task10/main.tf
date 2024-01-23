variable "usersAge" {
  type = map
  default = {
    test1 = 20
    test2 = 21
  }
}

output "printAge" {
  value = " your name is test1 & age is ${lookup(var.usersAge, "test1")}"
}