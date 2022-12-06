terraform {
  backend "s3" {
    // Gjenbruker bare denne bucketen. Ville normalt sett laget en ny i prod.
    bucket = "pgr301-2021-terraform-state"
    key    = "1012/shopifly-state.state"
    region = "eu-north-1"
  }
}
