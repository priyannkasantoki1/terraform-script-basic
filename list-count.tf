provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""  
}

variable "instance_name" {
    type = list
     default = ["instance-1","instance-2","instance-3"]
}

resource "aws_instance" "hello" {
    for_each      = toset(var.instance_name)
     ami = "ami-0453ec754f44f9a4a"
     instance_type = "t2.micro"
     tags = {
        name = each.key
     }
}
