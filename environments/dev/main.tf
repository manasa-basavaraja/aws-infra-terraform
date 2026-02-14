module "lambda" {
  source = "../../modules/lambda"

  function_name   = "dev-my-lambda"
  lambda_role_arn = module.iam.lambda_role_arn
}

module "glue_job" {
  source = "../../modules/glue-job"

  job_name        = "dev-glue-job"
  glue_role_arn   = module.iam.glue_role_arn
  script_location = "s3://my-bucket/glue-scripts/job.py"
}
