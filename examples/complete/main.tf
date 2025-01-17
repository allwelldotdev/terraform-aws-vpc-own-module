provider "aws" {
  region = local.region
}

locals {
  region = "us-east-1"
}

module "vpc" {
  source = "../../"

  vpc_config = {
    cidr_block = "10.0.0.0/16"
    name       = "your_vpc"
  }

  subnet_config = {
    subnet_1 = {
      cidr_block = "10.0.0.0/24"
      az         = "us-east-1a"
    },
    subnet_2 = {
      cidr_block = "10.0.1.0/24"
      az         = "us-east-1b"
      # public subnets are indicated by setting the "public" attribute to true
      public = true
    }
  }
}
