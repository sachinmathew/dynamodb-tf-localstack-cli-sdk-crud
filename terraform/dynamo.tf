resource "aws_dynamodb_table" "books" {
  name = "books"
  hash_key = "ISBN"
  attribute{
    name = "ISBN"
    type = "S"
  }
  read_capacity = 5
  write_capacity = 5
  billing_mode = "PROVISIONED"
}