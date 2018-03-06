variable "region" {
  default = "europe-west1"
}
variable "cluster_name" {
  default = "terraform-cluster"
}
variable "kubernetes_version" {
  default = "1.9.3-gke.0"
}
variable "username" {}
variable "password" {}
variable "project" {}
data "google_compute_zones" "available" {}

