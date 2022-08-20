resource "local_file" "ansible_inventory" {
content = templatefile("inventory.tmpl",
  {
    ip_clickhouse       = yandex_compute_instance.clickhouse.network_interface.0.nat_ip_address
    ip_vector           = yandex_compute_instance.vector.network_interface.0.nat_ip_address
    ip_lighthouse       = yandex_compute_instance.lighthouse.network_interface.0.nat_ip_address
  }
)
filename = "../playbook/inventory/prod.yml"
}
