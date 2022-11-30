terraform {
  backend "s3" {
    bucket = "pgr301-2021-terraform-state"
    key    = "1012/apprunner-a-new-state.state"
    region = "eu-north-1"
  }
}