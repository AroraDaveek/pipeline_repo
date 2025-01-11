terraform {
  backend "s3" {
    bucket = "my-bucket-daveek"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
