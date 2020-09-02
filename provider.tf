provider "google" {
  credentials = "${file("${var.google_credentials}")}"              #GOOGLE_CREDENTIALS to the path of a file containing the credential JSON
  project     = "${var.google_project_id}"
  region      = "${var.region}"
}
