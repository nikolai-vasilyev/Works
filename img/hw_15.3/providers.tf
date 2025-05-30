terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.10.0"
}

provider "yandex" {
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.default_zone
  service_account_key_file = file("~/hw_15.2/key.json")
}


resource "yandex_iam_service_account" "sa" {
  name = "bucket-admin"
}


resource "yandex_resourcemanager_folder_iam_member" "sa-bucket" {
  folder_id = var.folder_id
  role      = "admin"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "sa-bucket-kms" {
  folder_id = var.folder_id
  role      = "kms.keys.encrypterDecrypter"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}

resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = yandex_iam_service_account.sa.id
  description        = "static access key for object storage"
}

resource "yandex_kms_symmetric_key" "key-ob" {
  name                = local.kms_name
  description         = "encrypt object storage"
  default_algorithm   = "AES_128"
  rotation_period     = "8760h"
  # lifecycle {
  #   prevent_destroy = true
  # }
}