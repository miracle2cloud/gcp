# [START compute_flask_quickstart_vm]
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"
    }
  }
}

provider "google" {
  credentials = file(var.credfile)
  project = var.projectname
  region  = var.region
  zone    = var.zone
}



# Create a single Compute Engine instance
resource "google_compute_instance" "default" {

  for_each = {
    instance1 = "flask-vm1"
    instance2 = "flask-vm2"
  }
  name         = each.value
  machine_type = "f1-micro"
  zone         = "us-central1-c"
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

# [START vpc_flask_quickstart_ssh_fw]
resource "google_compute_firewall" "ssh" {
  name = "allow-ssh1"
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = "default"
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}
# [END vpc_flask_quickstart_ssh_fw]


# [START vpc_flask_quickstart_5000_fw]
resource "google_compute_firewall" "flask" {
  name    = "flask-app-firewall1"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["5000"]
  }
  source_ranges = ["0.0.0.0/0"]
}
# [END vpc_flask_quickstart_5000_fw]

# Create new multi-region storage bucket in the US
# with versioning enabled

# [START storage_bucket_tf_with_versioning]
resource "google_storage_bucket" "default" {
  name          = "bucket-tfstate-leo1"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
# [END storage_bucket_tf_with_versioning]