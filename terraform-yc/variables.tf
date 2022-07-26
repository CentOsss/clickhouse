variable "yandex_cloud_id" {
  default = "b1gkbfd9nj8qji9ij74j"
}

variable "yandex_folder_id" {
  default = "b1g1uide9uel0o2fmtl3"
}

variable "centos-7" {
  default = "fd8ksb92cu689husemj7"
}

variable "yc_virtual_machines" {
  description = "Yandex.Cloud virtual machines variables"
  type = map(object({
    hostname      = string
  }))
}