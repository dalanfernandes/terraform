provider "aws" {
  region = "us-east-1"
}
data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "code"
  output_path = "${path.module}/blank1.zip"
}
resource "aws_lambda_function" "example1" {
  function_name = "test-s-lambda"

  # Placeholder for actual settings
   runtime     = "nodejs20.x"
   handler     = "index.handler"
   role        = "arn:aws:iam::481675512364:role/test-lambda"
  # source_code_hash = filebase64sha256("lambda_function_payload.zip")
   filename    = "blank1.zip"
   
}


