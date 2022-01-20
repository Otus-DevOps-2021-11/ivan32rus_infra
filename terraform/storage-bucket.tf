provider "yandex" {
  token = var.service_account_key_file
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone = var.zone
}

resource "yandex_storage_bucket" "storage-otus" {
    bucket     = "test-otus"
    access_key = "access_key"
    secret_key = "secret_key"

  }

