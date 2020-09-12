data "google_container_engine_versions" "cluster_version" {
  location       = "${var.region}"
  version_prefix = "${var.cluster_version}"
  project        = "${var.google_project_id}"
}
output "cluster_version" {
  value = "${data.google_container_engine_versions.cluster_version.latest_node_version}"
}

resource "google_container_cluster" "gke_cluster_olga" {
  name               = "${var.cluster_name}"
  network            = "${var.cluster_network}"
  subnetwork         = "${var.subnetwork}"
  location           = "${var.region}"
  min_master_version = "${data.google_container_engine_versions.cluster_version.latest_node_version}"
  initial_node_count = "${var.cluster_node_count}"
  project            = "${var.google_project_id}"

  node_config {
    machine_type = "${var.machine_type}"
  }
}
