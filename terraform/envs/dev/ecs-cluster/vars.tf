# Input Variables

# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}

# Optional Variables
variable "project" {
  description = "Project assignation"
  type        = string
  default     = "dev"
}

variable "fargate_weight_capacity_provider_strategy" {
  description = "Fargate weight capacity provider strategy"
  type        = number
  default     = 50
}

variable "fargate_spot_weight_capacity_provider_strategy" {
  description = "Fargate spot weight capacity provider strategy"
  type        = number
  default     = 50
}

variable "cluster_logging_configuration" {
  description = "Cluster logging configuration"
  type        = string
  default     = "OVERRIDE"
}