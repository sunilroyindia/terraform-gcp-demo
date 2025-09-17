# main.tf

provider "google" {
  credentials = var.GOOGLE_CRED
  project     = var.project
  region      = var.region
}


resource "google_storage_bucket" "no-public-access" {
  name          = "sunil-project-1986-bucket"
  location      = var.region
  force_destroy = true
  project       = var.project
  public_access_prevention = "enforced"
}
