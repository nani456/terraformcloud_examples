# locals {
#   name = "${var.ec2_instance_type["small-apps"]}-${var.aws_region}"
# }
resource "aws_instance" "myec2new22" {
//for_each = toset(["small-apps","big-apps"])
    instance_type = var.ec2_instance_type
    ami = data.aws_ami.myid.id
    count = 2
    region = var.aws_region
    tags={
        Name= "tfcloud-${count.index}"
    }
  //  count = var.ec2_instance_count
    key_name = "tfec2keypair"
//   vpc_security_group_ids = [ aws_security_group.sg-vpc-web.id,aws_security_group.sg-vpc-remote.id ]
      user_data = <<-EOF
#!/bin/bash
dnf update -y
dnf install httpd -y
systemctl enable httpd
systemctl start httpd
echo "<h1>Welcome to StackSimplify! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
EOF
}
# resource "aws_instance" "my-demo-vm" {
#   ami           = data.aws_ami.myid.id
#   instance_type = var.ec2_instance_type["small-apps"]
#   tags = {
#     "Name" = "demo-vm1"
#   }
# }