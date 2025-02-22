provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "priyannka" {
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  key_name      = "my-key"

  tags = {
    Name = "priyannka5"
  }
}
resource "aws_key_pair" "hi-1" {
  key_name   = "my-key"
  public_key = "ssh-rsa root@name" 
}

resource "aws_eip" "ip-my" {
  domain = "vpc"
}

output "eip" {
  value = aws_eip.ip-my.public_ip
}

resource "aws_eip_association" "priyannka1" {
  instance_id = aws_instance.priyannka.id
  allocation_id = aws_eip.ip-my.id
}

