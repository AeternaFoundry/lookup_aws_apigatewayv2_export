variable "apigatewayv2_export_lookup" {
  description = <<EOT
Map of apigatewayv2_export_lookup, attributes below
Required:
    - api_id
    - output_type
    - specification
Optional:
    - export_version
    - include_extensions
    - region
    - stage_name
EOT

  type = map(object({
    api_id             = string
    output_type        = string
    specification      = string
    export_version     = optional(string)
    include_extensions = optional(bool)
    region             = optional(string)
    stage_name         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_export_lookup : (
        v.export_version == null || (contains(["1.0"], v.export_version))
      )
    ])
    error_message = "must be one of: 1.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_export_lookup : (
        contains(["OAS30"], v.specification)
      )
    ])
    error_message = "must be one of: OAS30"
  }
  validation {
    condition = alltrue([
      for k, v in var.apigatewayv2_export_lookup : (
        contains(["JSON", "YAML"], v.output_type)
      )
    ])
    error_message = "must be one of: JSON, YAML"
  }
}

