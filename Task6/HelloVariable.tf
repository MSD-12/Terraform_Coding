variable "getUser" {
  
}
output "printUserName" {
  value = "Hello User ${var.getUser}"
}