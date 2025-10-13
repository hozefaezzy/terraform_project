# Create new subscription (requires billing enrollment)

# resource "azurerm_subscription" "prod_subscription" {
#  subscription_name = "Production Subscription"
#  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.prod_billing.id
# Without data provider: billing_scope_id  = "/providers/Microsoft.Billing/billingAccounts/1234567890/enrollmentAccounts/0123456"
# }

# Management Group
resource "azurerm_management_group" "mgmt" {
  display_name = "LandingZoneMG"
  name         = "landingzone-mg"
}

# Attach Subscription to Management Group
resource "azurerm_management_group_subscription_association" "mgmt_attach" {
  management_group_id = azurerm_management_group.mgmt.id
  subscription_id     = data.azurerm_subscription.prod_subscription.id
}

