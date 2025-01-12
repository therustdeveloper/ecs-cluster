# Define Local Values in Terraform
locals {
  owners      = var.business_division
  environment = var.environment
  name        = "${var.business_division}-${var.environment}"
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
  eks_cluster_name         = "${local.name}-${var.cluster_name}"
  private_hosted_zone_name = "dev.godeveloper-int.io"
}
