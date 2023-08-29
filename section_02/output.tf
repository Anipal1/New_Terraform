#Terraform output values



#EC2 Instance public IP
output "Instance_publicip" {
    description = "EC2 Instance Public IP"
    value = aws_instance.awsvm.public_ip   
}

#EC2 Instance public DNS
output "Instance_publicdns" {
    description = "EC2 Instance Public DNS"
    value = aws_instance.awsvm.public_dns   
}