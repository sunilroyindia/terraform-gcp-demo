resource "google_storage_bucket" "no-public-access" {
  name          = "sunil-project-1986-bucket"
  location      = "US"
  force_destroy = true
  project        = "Default Project"
  public_access_prevention = "enforced"
}
