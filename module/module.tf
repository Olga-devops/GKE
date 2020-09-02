module "gke_cluster" {
    source  = "Olga-devops/gke/"
    cluster_name = "Test-cluster"
    google_region = "us-central1"
    google_project_id = "Olga-project"
    cluster_node_count = "2"
    cluster_version = "1.15"
    google_credentials = "./service-account.json" # service account 
}
