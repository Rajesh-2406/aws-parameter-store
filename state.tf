terraform{
  backend "s3"{
    bucket = "terraform-b2406"
    key = "params/terraform.tfstate"
    region = "us-east-1"
  }
}