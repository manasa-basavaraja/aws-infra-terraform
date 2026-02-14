resource "aws_glue_job" "this" {
  name     = var.job_name
  role_arn = var.glue_role_arn

  command {
    script_location = var.script_location
    python_version  = "3"
  }

  glue_version = "4.0"
}
