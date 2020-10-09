locals {
  common_vars = yamldecode(file("${find_in_parent_folders("common_vars.yaml")}"))
}

remote_state {
  backend  = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket         = local.common_vars.state_s3_bucket
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = local.common_vars.region
    encrypt        = true
    dynamodb_table = local.common_vars.state_dynamodb_table
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region  = "${local.common_vars.region}"
  profile = "${local.common_vars.profile}"
}
EOF
}
