variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "user_management_lambda"
}
