terraform {
  backend "gcs" {
    bucket = "terraform-state-bucket22"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}


# create a new storage bucket
resource "google_storage_bucket" "data_lake_raw_bucket22" {
  name                        = "data-lake-raw-bucket22"
  location                    = "US"
  force_destroy               = true
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}
