# data "azurerm_billing_enrollment_account_scope" "prod_billing" {
#  billing_account_name    = "1234567890"
#  enrollment_account_name = "0123456"
# }

data "azurerm_subscription" "prod_subscription" {
  subscription_id = "92ce78f8-6db3-4a60-9fa7-3e9d8179e33e"
}