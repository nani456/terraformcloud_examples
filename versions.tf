terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 6.0.0"
    }
  }
  backend "s3"{
    bucket = "mys3backend2"
    key = "statecommands/terraform.tfstate"
    region = "ap-south-2"
    dynamodb_table = "dynam_table"
    
  }
}

provider "aws" {

//profile = "default"
region = "ap-south-2"
}