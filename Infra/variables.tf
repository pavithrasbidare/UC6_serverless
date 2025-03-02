variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "UserTable"
}

variable "function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "UserFunction"
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}
