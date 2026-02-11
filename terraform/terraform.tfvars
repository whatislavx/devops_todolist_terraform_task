# Network configuration variables
resource_group_name   = "mate-azure-task-12"
location              = "francecentral"
virtual_network_name  = "vnet"
vnet_address_prefix   = "10.0.0.0/16"
subnet_address_prefix = "10.0.1.0/24"
subnet_name           = "default"
nsg_name              = "defaultnsg"
public_ip_name        = "linuxboxpip"

# Compute configuration variables
vm_name        = "matebox"
vm_size        = "Standard_B2ts_v2"
admin_username = "whatislavx"
script_file    = "install-app.sh"

# Storage configuration variables
storage_account_name = "whatislavxstorage"
container_name       = "task-artifacts"
