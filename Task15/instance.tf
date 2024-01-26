//Creating SSh Key Pair
resource "aws_key_pair" "key-tf" {
  key_name   = "key-tf"
  public_key = file("${path.module}/id_rsa.pub")
}

// printing key name 
output "keyName" {
  value = "$ {aws_key_pair.key-tf.key_name}"
}

// used for creating machine
resource "aws_instance" "web" {
  ami = "ami-0e472ba40eb589f49"
  instance_type = "t2.micro"
  tags = {
    "Name" = "First-Tf-Instance"
  }
}