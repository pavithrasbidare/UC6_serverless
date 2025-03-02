provider "aws" {
  region = var.region
}

module "iam" {
  source = "../modules/iam"
}

module "dynamodb" {
  source     = "../modules/dynamodb"
  table_name = var.table_name
}

module "lambda" {
  source        = "../modules/lambda"
  function_name = var.function_name
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.8"
  role          = module.iam.lambda_exec_role_arn
}

module "api_gateway" {
  source                      = "../modules/api_gateway"
  lambda_function_invoke_arn  = module.lambda.lambda_function_invoke_arn
  lambda_function_name        = module.lambda.lambda_function_name
  api_gateway_cloudwatch_role_arn = module.iam.api_gateway_cloudwatch_role_arn
  region                      = var.region
}
