variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "script_file" {
  type = string
}

variable "ssh_key_public_path" {
  type    = string
  default = "../id_rsa_azure.pub"
}
