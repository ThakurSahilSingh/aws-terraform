terraform {
  backend "s3" {
    bucket         = "three-tier-state-bucket-13"
    key            = "terraform/state"
    region         = "us-east-1"
    encrypt        = true
  }
}
