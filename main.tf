data "oci_dataflow_private_endpoints" "dataflow_private_endpoints_lookup" {
  for_each = var.dataflow_private_endpoints_lookup

  compartment_id           = each.value.compartment_id
  display_name             = each.value.display_name
  display_name_starts_with = each.value.display_name_starts_with
  owner_principal_id       = each.value.owner_principal_id
  state                    = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

