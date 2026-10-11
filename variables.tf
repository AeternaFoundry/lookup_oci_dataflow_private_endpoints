variable "dataflow_private_endpoints_lookup" {
  description = <<EOT
Map of dataflow_private_endpoints_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - display_name_starts_with
    - owner_principal_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id           = string
    display_name             = optional(string)
    display_name_starts_with = optional(string)
    owner_principal_id       = optional(string)
    state                    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

