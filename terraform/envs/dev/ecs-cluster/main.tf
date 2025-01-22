module "ecs_cluster" {
  source = "terraform-aws-modules/ecs/aws//modules/cluster"

  cluster_name = "${var.environment}-ecs-fargate"

  cluster_configuration = {
    execute_command_configuration = {
      logging = var.cluster_logging_configuration
      log_configuration = {
        cloud_watch_log_group_name = "/aws/ecs/${var.environment}-ecs-fargate"
      }
    }
  }

  fargate_capacity_providers = {
    FARGATE = {
      default_capacity_provider_strategy = {
        weight = var.fargate_weight_capacity_provider_strategy
      }
    }
    FARGATE_SPOT = {
      default_capacity_provider_strategy = {
        weight = var.fargate_spot_weight_capacity_provider_strategy
      }
    }
  }

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}