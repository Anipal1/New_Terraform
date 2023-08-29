# #Terraform output forloop with List & Map.

# Out put - Forloop with List
output "for_output_list" {
    description = "For_loop with list"
    value = [for instance in aws_instance.awsvm: instance.public_dns]
  
}

# Out put - Forloop with Map
output "for_output_map1" {
    description = "For_loop with Map"
    value = {for instance in aws_instance.awsvm: instance.id => instance.public_dns}
  
}


# Out put - Forloop with Map Advance
output "for_output_map2" {
    description = "For_loop with Map Advance"
    value = {for c, instance in aws_instance.awsvm: c => instance.public_dns}
  
}

# Output - legacy Splat Operator (legacy)-return the list
output "legacy_Splat_instance_public_dns" {
    description = "legacy Splat Operator"
    value = aws_instance.awsvm.*.public_dns
  
}

# Output - latest Generalized Splat Operator -return the list
output "latest_Splat_instance_public_dns" {
    description = "Generalized latest Splat Operator"
    value = aws_instance.awsvm[*].public_dns
  
}