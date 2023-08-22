#Resourse: ec2 instance
resource "aws_instance" "aws" {
    ami = "ami-08a52ddb321b32a8c"
    instance_type = "t3.micro"
    user_data =  file("${path.module}/install1.sh")
    tags = {
      "Name" = "EC2-Demo1" 
    }



  
}