resource "aws_security_group" "sg-vpc-remote" {
    name = "sgforrmt"
    ingress {
        description = "allow port 22"
        from_port = 22
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }
    egress{
        description = "all outbound allowed"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}

resource "aws_security_group" "sg-vpc-web" {
    name = "sgvpcweb"
    description = "sg for vpc web"
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    ingress{
        from_port = 443
        to_port = 443
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

  
}