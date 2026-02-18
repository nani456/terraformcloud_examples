variable "aws_region" {
    description = "region in which aws resources to be created"
    type = string
  //  default = "ap-south-2"
  
}

# variable "ec2_ami_id" {

#     description = "AMI ID"
#     type = string
#     default = "ami-00b9840037f2380a4"
  
# }

variable "ec2_instance_count" {
    description = "how many?"
    type = number
   // default = 1
    sensitive = false
  
}
variable "ec2_instance_type" {
    type = map(string)
    sensitive = false
   // default ="t3.micro"
}