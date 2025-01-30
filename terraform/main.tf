module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-sandbox-aft-test@nba.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Learn-AFT"
    SSOUserEmail              = "aws-sandbox-aft-test@nba.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Hassan Iqbal"
    change_reason       = "test AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
