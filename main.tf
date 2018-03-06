provider "google" {
  project = "${var.project}"
  region = "${var.region}"
  // Provider settings to be provided via ENV variables
}

resource "google_container_cluster" "primary" {
  name = "${var.cluster_name}"
  zone = "${data.google_compute_zones.available.names[0]}"
  initial_node_count = 3

  node_version = "${var.kubernetes_version}"
  min_master_version = "${var.kubernetes_version}"

  additional_zones = [
    "${data.google_compute_zones.available.names[1]}"
  ]

  master_auth {
    username = "${var.username}"
    password = "${var.password}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }
}
