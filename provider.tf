provider "google" {
  credentials = file("account.json")
  project     = "${var.google_project_id}"
  region      = "${var.region}"
}
