// this Script missing with some ssh key setup

resource "aws_instance" "web" {
  //ami is your amazon machine image which you wants use
  ami = data.aws_ami.ubuntu.id

  //instance types are combinations of CPU, memory, storage, and networking capacity that allow you to choose the best mix of resources for your applications
  //Here we choose t2.micro because it's free 
  instance_type = "t2.micro"

  tags = {
    // instance name you can intiallize here
    Name = "Firts_terraform_instance"
  }
}
