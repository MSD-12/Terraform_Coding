resource "google_compute_network" "my_vpc" {
  name                    = "tf-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet" {
  name          = "tf-subnet"
  region        = "us-central1"
  network       = google_compute_network.my_vpc.name
  ip_cidr_range = "10.0.1.0/24"
}
