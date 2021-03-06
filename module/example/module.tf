module "gke_cluster" {
    source  = "../../"
    cluster_name = "gke-cluster"
    region = "us-central1"
    google_project_id = "caramel-anvil-289323"
    cluster_node_count = "1"
    cluster_version = "1.15"
    google_credentials = "./olga-service-account.json" # service account for credentials
}
