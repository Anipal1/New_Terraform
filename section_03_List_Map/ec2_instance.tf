#Resourse: ec2 instance
resource "aws_instance" "awsvm" {
    ami = data.aws_ami.amzlinux2.id
    # instance_type = var.instance_type
    # instance_type = var.instance_type_List[1] #for list
    instance_type = var.instance_type_map["prod"] #for map
    user_data = file("${path.module}/install1.sh")
    key_name = var.instance_keypair
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id ]
    count = 5
    tags = {
      "Name" = "Count-Demo-${count.index}" 
    }  
}
