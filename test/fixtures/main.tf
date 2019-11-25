terraform {
  required_version = "~> 0.12.7"
}

provider "aws" {
  version = "~> 2.26"
}

module "wc_network" {
  source               = "../../"
  vpc_cidr_block       = var.vpc_cidr_block
  common_tags          = var.common_tags
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  name_prefix          = var.name_prefix
}