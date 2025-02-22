
variable "hello" {
    type = list(string)
    default = ["priya","priyannka"]  
}

resource "null_resource" "create-user" {
    count = length(var.hello) 

 provisioner "local-exec" {
   command = "mkdir -p /devops/${var.hello[count.index]}"
 }
}


