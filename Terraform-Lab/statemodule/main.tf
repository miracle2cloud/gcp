# [START compute_flask_quickstart_vm]
# Create a single Compute Engine instance
resource "google_compute_instance" "default" {

    for_each = {
        instance1 = "flask-vm-1"
        instance2 = "flask-vm-2"
        instance3 = "flask-vm-3"
    }

  name         = each.value
  machine_type = "f1-micro"
  tags         = ["${each.key}"]

  metadata = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  # Install Flask
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python-pip rsync; pip install flask"

  network_interface {
    network = "default"

    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}
# [END compute_flask_quickstart_vm]



# [START storage_bucket_tf_with_versioning]
resource "google_storage_bucket" "default" {
  name          = "bucket-tfstate-leo123"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }

}

terraform {
 backend "gcs" {
   bucket  = "bucket-tfstate-leo123"
   prefix  = "terraform/state"
   credentials = "terraform-infra-123.json"
   version = true
 }
}