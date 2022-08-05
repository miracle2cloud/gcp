
# [START compute_flask_quickstart_vm]
# Create a single Compute Engine instance
resource "google_compute_instance" "default" {
  name         = "flask-vm-state"
  machine_type = "f1-micro"
  tags         = ["ssh"]

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

# Create new multi-region storage bucket in the US
# with versioning enabled

# [START storage_bucket_tf_with_versioning]
resource "google_storage_bucket" "default" {
  name          = "bucket-tfstate-leo-new"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

