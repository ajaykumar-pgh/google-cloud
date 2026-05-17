terraform {
  backend "gcs" {
    bucket = "ajay-terraform-state-prod-001"
    prefix = "terraform/state"
  }
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.32.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
