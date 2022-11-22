# ---------------------------------------------------------------------------------------------------------------------
# TERRAGRUNT CONFIGURATION
# Terragrunt is a thin wrapper for Terraform that provides extra tools for working with multiple Terraform modules,
# remote state, and locking: https://github.com/gruntwork-io/terragrunt
# ---------------------------------------------------------------------------------------------------------------------

locals {
  account_variables = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region_variables  = read_terragrunt_config(find_in_parent_folders("region.hcl"))

  # Extract the variables we need for easy access
  account_name = local.account_variables.locals.account_name
  account_id   = local.account_variables.locals.account_id
  environment  = upper(local.account_variables.locals.environment)
  region       = local.region_variables.locals.region
}
