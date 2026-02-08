output "s3_bucket_name" {

    value = aws_s3_bucket.terraform_state.id
    description = "Name of s3 bucket used for terraform state"
}

output "dynamodb_table_name" {
    value = aws_dynamodb_table.terraform_state_lock.name
    description = "Name of dynamodb table used for terraform state locking"
}