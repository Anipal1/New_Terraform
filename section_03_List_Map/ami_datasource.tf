#Get latest AMI ID from Amazon linux2 os 

data "aws_ami" "amzlinux2" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  #  filter {
  #   name   = "architeture"
  #   values = ["x86_64"]
  # }
  
}