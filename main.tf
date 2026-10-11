data "oci_core_local_peering_gateways" "core_local_peering_gateways_lookup" {
  for_each = var.core_local_peering_gateways_lookup

  compartment_id = each.value.compartment_id
  vcn_id         = each.value.vcn_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

