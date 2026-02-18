data "aws_ami" "myid" {
    most_recent = true
    owners = ["amazon"]
  filter {
    name = "name"
    values = [ "al2023-ami-2023.*" ]
    # al2023-ami-2023.10.20260202.2-kernel-6.1-x86_64

    # al2023-ami-2023.10.20260202.2-kernel-6.1-x86_64
    # al2023-ami-2023.10.20260202.2-kernel-6.1-x86_64
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }  
}