variable "core_local_peering_gateways_lookup" {
  description = <<EOT
Map of core_local_peering_gateways_lookup, attributes below
Required:
    - compartment_id
Optional:
    - vcn_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    vcn_id         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

