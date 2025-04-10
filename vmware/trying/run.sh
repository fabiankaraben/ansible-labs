ansible-playbook -vvv \
  -i inventory.ini \
  ../create_esxi_vm.yml \
  -e "esxi_hostname=192.168.0.42" \
  -e "esxi_username=dev" \
  -e "esxi_password=tempDevPass123" \
  -e "esxi_validate_certs=false" \
  -e "vm_name=cli-deployed-vm-01" \
  -e "vm_guest_id=centos7_64Guest" \
  -e "vm_datastore=datastore1" \
  -e "vm_disk_size_gb=20" \
  -e "vm_memory_mb=1024" \
  -e "vm_num_cpus=1" \
  -e "vm_network_name='VM Network'"
  # Add other -e "var=value" lines for any other variables you need to set