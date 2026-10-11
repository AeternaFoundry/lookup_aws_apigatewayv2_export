data "aws_apigatewayv2_export" "apigatewayv2_export_lookup" {
  for_each = var.apigatewayv2_export_lookup

  api_id             = each.value.api_id
  output_type        = each.value.output_type
  specification      = each.value.specification
  export_version     = each.value.export_version
  include_extensions = each.value.include_extensions
  region             = each.value.region
  stage_name         = each.value.stage_name
}

