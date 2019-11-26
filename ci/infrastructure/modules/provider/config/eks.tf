module "cloud" {
  source = "./eks"
#  is_enabled = "${var.provider_name == "eks" ? "true" : "false"}"
  workers = "${var.provider_worker_count}"
  az_region = "${var.provider_region}"
  az_worker_image = "${var.provider_worker_image}"
  az_vpc_cidr = "${var.provider_vpc_cidr}"
//  zone = "${var.subnetaz}"
//  zone = "us-east-1a"
  prefix = "${var.provider_prefix}"
  instance_create_timeout = "${var.provider_instance_create_timeout}"
  eks_version = "${var.provider_cluster_version}"
  key_name = "${var.provider_key_name}"
  public_key_path = "${var.provider_public_key_path}"
}
