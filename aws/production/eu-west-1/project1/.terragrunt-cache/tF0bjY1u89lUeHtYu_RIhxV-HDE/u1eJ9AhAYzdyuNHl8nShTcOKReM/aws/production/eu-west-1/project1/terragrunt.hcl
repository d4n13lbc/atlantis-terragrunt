include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_parent_terragrunt_dir()}//modules/module1"
}

inputs = {
  message = "hello_world"
}
