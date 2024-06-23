# Terraform Block

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

}

module "vpc" {
  source = "./modules/vpc"
}

output "vpc" {
  description = "id of virtual private cloud"
  value = module.vpc.vpc_id
}

module "security_group" {
  source = "./modules/security_group"
}

output "public_security_group" {
  description = "id of bastion security group"
  value = module.security_group.public_bastion_sg_group_id
}

module "ec2_public" {
  source = "./modules/ec2_public"
}

output "ec2_public_id" {
  description = "id of ec2_bastion machine"
  value = module.ec2_public.ec2_bastion_public_instance_ids
}

output "ec2_public_ip" {
  description = "ec2_bastion machine ipv4 address"
  value = module.ec2_public.ec2_bastion_public_ip
}


