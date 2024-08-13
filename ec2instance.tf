provider "aws" {
  #version = "~> 2.0"
  region     = "ap-south-1"
  
}

resource "aws_instance" "new" {
  count           = "1"
  ami             = "ami-052cef05d01020f1d"
  instance_type   = "t2.micro"
  
  tags = {
    Name = "new"
  }
}
