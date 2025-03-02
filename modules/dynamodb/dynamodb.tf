resource "aws_dynamodb_table" "user_table" {
  name           = var.table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "UserId"

  attribute {
    name = "_id"
    type = "S"
  }
}
