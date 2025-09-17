# main.tf

provider "google" {
  credentials = var.GOOGLE_CRED
  project     = var.project
  region      = var.region
}

variable "GOOGLE_CRED" {
  description = "GCP service account credentials in JSON"
  type        = string
  sensitive   = true
}

variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "US"
}

resource "google_storage_bucket" "no-public-access" {
  name          = "sunil-project-1986-bucket"
  location      = var.region
  force_destroy = true
  project       = var.project
  public_access_prevention = "enforced"
}