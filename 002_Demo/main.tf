terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.8.0"
    }
  }
}

provider "google" {
  credentials = file("service_account.json")

  project = "midyear-cursor-363214"
  region  = "asia-southeast1"
  zone    = "asia-southeast1-a"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
