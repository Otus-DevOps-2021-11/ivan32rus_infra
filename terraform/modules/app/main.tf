resource "yandex_compute_instance" "app" {
  name = "reddit-app"

  labels = {
    tags = "reddit-app"
  }
  resources {
    core_fraction = 20
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }
   }
  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  connection {
  type = "ssh"
  host = self.network_interface.0.nat_ip_address 
  user = "ubuntu"
  #agent = true
  # путь до приватного ключа
  private_key = "${file(var.private_key_path)}" 
  }

  provisioner "file" {
  source = "../files/puma.service"
  destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
  script = "../files/deploy.sh"
  } 
}

