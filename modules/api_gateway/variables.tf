variable "lambda_function_invoke_arn" {
  description = "The invoke ARN of the Lambda function"
  type        = string
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "api_gateway_cloudwatch_role_arn" {
  description = "The ARN of the IAM role for API Gateway CloudWatch logging"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}
