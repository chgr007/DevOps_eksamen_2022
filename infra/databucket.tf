# Jim; this just fails ... commented it out ! We need to figure this out later, starting new task instead...
terraform {
  backend "s3" {
    bucket = "pgr301-2021-terraform-state"
    key    = "1012/apprunner-a-new-state.state"
    region = "eu-north-1"
  }
}

# Er det fordi det ikke er noen state fil i github actions?
resource "aws_s3_bucket" "analyticsbucket" {
  bucket = "analytics-${var.candidate_id}"
}
