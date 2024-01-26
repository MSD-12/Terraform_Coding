output "printFile" {
  value = file("${path.module}/test1.txt")
}