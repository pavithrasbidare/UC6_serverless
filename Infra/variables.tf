variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "UserTable"
}

variable "function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "user_management_lambda"
}
