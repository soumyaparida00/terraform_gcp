resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  project                 = var.project_id
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  count       = length(var.subnet_names)
  name        = var.subnet_names[count.index]
  ip_cidr_range = var.subnet_cidr_range[count.index]
  region      = var.region
  network     = google_compute_network.vpc.self_link
}