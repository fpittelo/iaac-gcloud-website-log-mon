# Specify cloud provider
provider "google" {
    credentials     = file(var.gcp_auth_file)
    project         = var.gcp_project
    region          = var.gcp_region
    zone            = var.gcp_zone_a
}