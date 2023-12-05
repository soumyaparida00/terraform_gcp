provider "google" {
  project     = var.project_id
  region      = var.region
}
module "vpc" {
  source          = "./modules/vpc"
  project_id      = var.project_id
  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
}
module "subnet" {
  source            = "./modules/subnet"
  subnet_names      = var.subnet_names
  subnet_cidr_range = var.subnet_cidr_range
}
