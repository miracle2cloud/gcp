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


module "create3instances" {
  source = ".//statemodule"
  credfile = "terraform-infra-123.json"
  zone = var.zone
  projectname = var.projectname
}
