#resource "google_container_node_pool" "nodes" {
#  name       = "my-node-pool"
#  location   = "us-central1"
#  cluster    = google_container_cluster.gke_cluster_olga.name
#  node_count = 2
#
#  node_config {
#    preemptible  = true
#    machine_type = "e2-medium"
#
#    metadata = {
#      disable-legacy-endpoints = "true"
#    }
#
#    oauth_scopes = [
#      "https://www.googleapis.com/auth/logging.write",
#      "https://www.googleapis.com/auth/monitoring",
#    ]
#  }
#}
