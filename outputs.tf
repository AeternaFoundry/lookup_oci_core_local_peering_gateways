output "core_local_peering_gateways_lookup_id" {
  description = "Map of id values across all core_local_peering_gateways_lookup, keyed the same as var.core_local_peering_gateways_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_local_peering_gateways.core_local_peering_gateways_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_local_peering_gateways_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_local_peering_gateways_lookup, keyed the same as var.core_local_peering_gateways_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_local_peering_gateways.core_local_peering_gateways_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_local_peering_gateways_lookup_filter" {
  description = "Map of filter values across all core_local_peering_gateways_lookup, keyed the same as var.core_local_peering_gateways_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_local_peering_gateways.core_local_peering_gateways_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_local_peering_gateways_lookup_local_peering_gateways" {
  description = "Map of local_peering_gateways values across all core_local_peering_gateways_lookup, keyed the same as var.core_local_peering_gateways_lookup except keys with no local_peering_gateways are omitted"
  value       = { for k, v in data.oci_core_local_peering_gateways.core_local_peering_gateways_lookup : k => v.local_peering_gateways if v.local_peering_gateways != null && length(v.local_peering_gateways) > 0 }
}
output "core_local_peering_gateways_lookup_vcn_id" {
  description = "Map of vcn_id values across all core_local_peering_gateways_lookup, keyed the same as var.core_local_peering_gateways_lookup except keys with no vcn_id are omitted"
  value       = { for k, v in data.oci_core_local_peering_gateways.core_local_peering_gateways_lookup : k => v.vcn_id if v.vcn_id != null && length(v.vcn_id) > 0 }
}

