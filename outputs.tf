output "apigatewayv2_export_lookup_id" {
  description = "Map of id values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigatewayv2_export_lookup_api_id" {
  description = "Map of api_id values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "apigatewayv2_export_lookup_body" {
  description = "Map of body values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.body if v.body != null && length(v.body) > 0 }
}
output "apigatewayv2_export_lookup_export_version" {
  description = "Map of export_version values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.export_version if v.export_version != null && length(v.export_version) > 0 }
}
output "apigatewayv2_export_lookup_include_extensions" {
  description = "Map of include_extensions values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.include_extensions if v.include_extensions != null }
}
output "apigatewayv2_export_lookup_output_type" {
  description = "Map of output_type values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.output_type if v.output_type != null && length(v.output_type) > 0 }
}
output "apigatewayv2_export_lookup_region" {
  description = "Map of region values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "apigatewayv2_export_lookup_specification" {
  description = "Map of specification values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.specification if v.specification != null && length(v.specification) > 0 }
}
output "apigatewayv2_export_lookup_stage_name" {
  description = "Map of stage_name values across all apigatewayv2_export_lookup, keyed the same as var.apigatewayv2_export_lookup"
  value       = { for k, v in data.aws_apigatewayv2_export.apigatewayv2_export_lookup : k => v.stage_name if v.stage_name != null && length(v.stage_name) > 0 }
}

