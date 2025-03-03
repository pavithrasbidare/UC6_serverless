plugin "terraform" {
  enabled = true
}
rule "aws_dynamodb_table_tag" {
  enabled = true
  message = "DynamoDB tables should have tags."
  resource_type = "aws_dynamodb_table"
  attribute = "tags"
  condition = "notempty"
}
rule "aws_lambda_function_environment" {
  enabled = true
  message = "Lambda functions should have environment variables."
  resource_type = "aws_lambda_function"
  attribute = "environment"
  condition = "notempty"
}
rule "aws_api_gateway_stage_logging" {
  enabled = true
  message = "API Gateway stages should have logging enabled."
  resource_type = "aws_api_gateway_stage"
  attribute = "access_log_settings"
  condition = "notempty"
}
