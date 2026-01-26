terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.16.0"
    }
  }
}

provider "google" {
    credentials = "./keys/my-creds.json"
  project     = "dtc-de-course-485504"
  region      = "us-central1"
  }


    resource "google_storage_bucket" "demo-bucket" {
    name          = "dtc-de-course-485504-terra-bucket"
    location      = "US"
    force_destroy = true
    uniform_bucket_level_access = true
    lifecycle_rule {
    condition {
        age = 1
    }
    action {
        type = "AbortIncompleteMultipartUpload"
    }
    }
}