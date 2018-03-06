provider "aws" {
  region     = "us-west-2"

  endpoints {
        dynamodb = "http://localhost:4569"
    }
}

resource "aws_dynamodb_table" "mytable" {
    name           = "mytable"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "Id"
    range_key      = "Timestamp"

    attribute {
        name = "Id"
        type = "S"
    }

    attribute {
        name = "Timestamp"
        type = "S"
    }
}