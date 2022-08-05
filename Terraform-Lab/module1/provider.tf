terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"
    }
  }
}

provider "google" {
  credentials = file("terraform-infra-123.json")
  project = var.projectname
  region  = var.region
  zone    = var.zone
}