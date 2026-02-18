output "instance_publicip" {
    description = "my ec2 public ip"
    sensitive = false
    value = aws_instance.myec2new22.*.public_ip
  
}
output "instance_dns" {
    description = "my ec2 dns"
        value = aws_instance.myec2new22.*.public_dns
        sensitive = false

  
}