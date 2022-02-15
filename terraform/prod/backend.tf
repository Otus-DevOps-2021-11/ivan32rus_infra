terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "otus"
    region     = "us-east-1"
    key        = "/terraform.tfstate"
    access_key = "asdasdasTasdasd"
    secret_key = "asdasdasd_ONghfghfghf34"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

