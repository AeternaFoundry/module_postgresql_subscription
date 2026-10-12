variable "subscriptions" {
  description = <<EOT
Map of subscriptions, attributes below
Required:
    - conninfo
    - name
    - publications
Optional:
    - create_slot
    - database
    - slot_name
EOT

  type = map(object({
    conninfo     = string
    name         = string
    publications = set(string)
    create_slot  = optional(bool)
    database     = optional(string)
    slot_name    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        length(v.conninfo) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.subscriptions : (
        v.slot_name == null || (length(v.slot_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

