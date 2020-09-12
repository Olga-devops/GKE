module "gke_cluster" {
    source  = "../../"
    cluster_name = "gke-cluster"
    google_region = "us-central1"
    google_project_id = "caramel-anvil-289323"
    cluster_node_count = "2"
    cluster_version = "1.15"
    google_credentials = "./olga-service-account.json" # service account for credentials
}
