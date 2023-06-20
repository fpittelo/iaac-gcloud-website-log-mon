resource "google_compute_instance" "vm_instance" {
  name         = "demowb01"
  machine_type = "e2-micro"
  
  tags = {
    owner       = var.owner
    dept        = var.department
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  
  }

  network_interface {
    # A default network is created for all GCP projects
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
    
    tags = {
    owner       = var.owner
    dept        = var.department
  }

  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}