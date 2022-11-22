# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "gsg-geniuslive-production"
  account_id     = "189514737685"
  environment    = "production"
}
