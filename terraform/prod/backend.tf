terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "test-otus"
    region     = "us-east-1"
    key        = "home/test/DEVOPS_1/terraform.tfstate"
    access_key = "aGNoNM-_HU3IRuobitDa"
    secret_key = "9N297By0l5AILqPiCTGnyw1I74O5YqaDQNn-mzwS"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

