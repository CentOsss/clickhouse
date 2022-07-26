resource "yandex_vpc_network" "default" {
  name = "net"
}
resource "yandex_vpc_subnet" "default" {
  name = "subnet"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.101.0/24"]
}

resource "yandex_compute_instance" "nodes" {
  for_each                  = var.yc_virtual_machines
  name                      = each.key
  zone                      = "ru-central1-a"
  hostname                  = each.value.hostname
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.centos-7}"
      type        = "network-nvme"
      size        = "25"
    }
  }


  network_interface {
    subnet_id = "${yandex_vpc_subnet.default.id}"
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
  
}
