include {
  path = find_in_parent_folders()
}

terraform {
  source = "github.com/JamieTaffurelli/az-storageaccount.git?ref=v1"
}

inputs = {
  resource_group_name                         = "terraform"
  location                                    = "eastus"
  storage_account_name                        = "terraformstatedevsa"
  network_acl_default_action                  = "Allow"
  log_analytics_workspace_name                = "logging"
  log_analytics_workspace_resource_group_name = "logging"
  tags                                        = {}
}
