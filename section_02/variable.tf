# AWS region
variable "aws_region" {
    description = "the region to create aws resource"
    type = string
    default = "us-east-1"   
}

# AWS instance type
variable "instance_type" {
    description = "ec2 instance type"
    type = string
    default = "t3.micro" 
}
#AWS instance keypair
variable "instance_keypair" {
    description = "ec2 keypair to associate with ec2 instance"
    type = string
    default = "terraform1-key" 
}