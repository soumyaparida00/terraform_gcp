module "vpc" {
  source     = "../vpc"
  project_id = var.project_id
  vpc_name   = var.vpc_name
  vpc_cidr   = var.vpc_cidr
}

resource "google_compute_subnetwork" "subnet" {
  count       = length(var.subnet_names)
  name        = var.subnet_names[count.index]
  ip_cidr_range = var.subnet_cidr_range[count.index]
  region      = var.region
  network     = var.vpc_name
}
