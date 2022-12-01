terraform {
  backend "s3" {
    bucket = "pgr301-2021-terraform-state"
    key    = "1012/shopifly-state.state"
    region = "eu-north-1"
  }
}
