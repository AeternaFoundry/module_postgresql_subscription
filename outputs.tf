output "subscriptions_id" {
  description = "Map of id values across all subscriptions, keyed the same as var.subscriptions except keys with no id are omitted"
  value       = { for k, v in postgresql_subscription.subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subscriptions_conninfo" {
  description = "Map of conninfo values across all subscriptions, keyed the same as var.subscriptions except keys with no conninfo are omitted"
  value       = { for k, v in postgresql_subscription.subscriptions : k => v.conninfo if v.conninfo != null && length(v.conninfo) > 0 }
  sensitive   = true
}
output "subscriptions_create_slot" {
  description = "Map of create_slot values across all subscriptions, keyed the same as var.subscriptions except keys with no create_slot are omitted"
  value       = { for k, v in postgresql_subscription.subscriptions : k => v.create_slot if v.create_slot != null }
}
output "subscriptions_database" {
  description = "Map of database values across all subscriptions, keyed the same as var.subscriptions except keys with no database are omitted"
  value       = { for k, v in postgresql_subscription.subscriptions : k => v.database if v.database != null && length(v.database) > 0 }
}
output "subscriptions_name" {
  description = "Map of name values across all subscriptions, keyed the same as var.subscriptions except keys with no name are omitted"
  value       = { for k, v in postgresql_subscription.subscriptions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "subscriptions_publications" {
  description = "Map of publications values across all subscriptions, keyed the same as var.subscriptions except keys with no publications are omitted"
  value       = { for k, v in postgresql_subscription.subscriptions : k => v.publications if v.publications != null && length(v.publications) > 0 }
}
output "subscriptions_slot_name" {
  description = "Map of slot_name values across all subscriptions, keyed the same as var.subscriptions except keys with no slot_name are omitted"
  value       = { for k, v in postgresql_subscription.subscriptions : k => v.slot_name if v.slot_name != null && length(v.slot_name) > 0 }
}

