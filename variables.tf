# define GCP region
variable "gcp_region" {
  type        = string
  description = "europe-west6"
}
# define GCP project name
variable "gcp_project" {
  type        = string
  description = "iaac-gcloud-website-log-mon"
}
# GCP authentication file
variable "gcp_auth_file" {
  type        = string
  description = "iaac-gcloud-website-log-mon-6e14442ea636.json"
}
variable "bucket-name" {
  type        = string
  description = "terraform-backend"
}
variable "storage-class" {
  type        = string
  description = "The storage class of the Storage Bucket to create"
}