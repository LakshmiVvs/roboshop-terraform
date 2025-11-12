module "vpc" {
  source       = "../../terraform-vpc-module"
  vpc_cidr         = var.cidr
  project_name = var.project_name
  env  = var.env
  vpc_tags     = var.vpc_tags
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  database_subnet_cidr  = var.database_subnet_cidr
  
}
