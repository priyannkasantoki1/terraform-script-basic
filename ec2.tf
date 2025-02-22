provider "aws" {
  region = "us-east-1"
  access_key =  ""
  secret_key = ""
  
}

resource "aws_instance" "web" {
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"

  tags = {
    Name = "priyannka"
  }
}