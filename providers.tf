# Specify cloud provider
provider "google" {
    credentials = "iaac-gcloud-website-log-mon-6e14442ea636.json"
    project = "iaac-gcloud-website-log-mon"
    region = "europe-west6"
    zone = "europe-west6-b"
}