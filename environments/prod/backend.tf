terraform {
  backend "s3" {
    bucket         = "manasa-terraform-state-dev"
    key            = "aws-infra/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
