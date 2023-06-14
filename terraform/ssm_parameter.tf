resource "aws_ssm_parameter" "lambda_app_target_url" {
  description = "test location for web request"
  name        = "/${var.ssm_parameter_store_key}"
  type        = "String"
  value       = "https://replaceme.com/api"

  lifecycle {
    ignore_changes = [
      value
    ]
  }

}
