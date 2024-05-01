resource "google_compute_instance" "my_instance" {
  name         = "tf-instance"
  machine_type = "e2-micro"  
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
  
  metadata_startup_script = file("startup_script.sh")

}
