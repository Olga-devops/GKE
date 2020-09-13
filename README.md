Terraform module for GKE with custom buckets 
-
To be able to use following terraform module please follow the documentation.

Requirements Terraform >= 0.11.14 provider.google: version = "~> 2.20" Calling module Your module.tf should look like this
```
module "gke_cluster" {
    source  = "../../"
    cluster_name = "gke-cluster"
    region = "us-central1"
    google_project_id = "caramel-anvil-289"
    cluster_node_count = "1"
    cluster_version = "1.15"
    google_credentials = "./service-account.json" # service account for credentials
}
```


After you finish with defining all required variables go ahead and run `terraform init`

After terraform finish with initialization go ahead and `terraform apply`

Variables For more info, please see the variables file.


cluster_network The name or self_link of the Google Compute Engine network to which the cluster is connected. (Optional) string cluster_name The name of the cluster, unique within the project and location. (Required) string machine_type The name of a Google Compute Engine machine type. (Optional) string 



Variable     | Description   | Default | Type |
-------------|---------------|---------|------|
google_project_id|Google account project id.| (Required)|string|
region      | Name of the namespace.|(Required)|string|
cluster_node_count| Version of the cluster.| (Required)|string
cluster_node_count| Number of nodes for the cluster.|(Required)|string
|google_credentials|your google service account example.json |(Required)| string|
|cluster_network| The name or self_link of the Google Compute Engine network to which the cluster is connected. |(Optional) |string |cluster_name |The name of the cluster, unique within the project and location. |(Required) |string |machine_type |The name of a Google Compute Engine machine type.| (Optional) |string 
