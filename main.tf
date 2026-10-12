resource "postgresql_subscription" "subscriptions" {
  for_each = var.subscriptions

  conninfo     = each.value.conninfo
  name         = each.value.name
  publications = each.value.publications
  create_slot  = each.value.create_slot
  database     = each.value.database
  slot_name    = each.value.slot_name
}

