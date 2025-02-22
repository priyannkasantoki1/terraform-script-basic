provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""  
}

variable "elb" {
   type = map
   default = {
    "x" = "t2.micro"
    "y" = "t2.nano"
    "z" = "t2.large"
   }
}

resource "aws_instance" "priyannka" {
   ami = "ami-0453ec754f44f9a4a"
   instance_type = var.elb["x"]
}