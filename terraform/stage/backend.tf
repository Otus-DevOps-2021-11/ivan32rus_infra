terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "test-otus"
    region     = "us-east-1"
    key        = "home/test/DEVOPS_1/terraform.tfstate"
    access_key = "Z6uZujzhW3j0xnmo5VMT"
    secret_key = "rLQ_gX9vHkH4L0dUnnUR_ONRQsSxBPPGRL82Aa52"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

