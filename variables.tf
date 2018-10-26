variable "region" {
  default = "europe-west1"
}
variable "cluster_name" {
  default = "terraform-cluster"
}
variable "kubernetes_version" {
  default = "1.10.7-gke.6"
}
variable "username" {}
variable "password" {}
variable "project" {}
data "google_compute_zones" "available" {}

