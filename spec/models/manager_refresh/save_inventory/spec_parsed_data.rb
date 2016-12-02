module SpecParsedData
  def vm_data(i, data = {})
    {
      :type            => ManageIQ::Providers::CloudManager::Vm.name,
      :uid_ems         => "vm_uid_ems_#{i}",
      :ems_ref         => "vm_ems_ref_#{i}",
      :name            => "vm_name_#{i}",
      :vendor          => "amazon",
      :raw_power_state => "unknown",
      :location        => "vm_location_#{i}",
    }.merge(data)
  end

  def key_pair_data(i, data = {})
    {
      :type => ManageIQ::Providers::CloudManager::AuthKeyPair.name,
      :name => "key_pair_name_#{i}",
    }.merge(data)
  end

  def image_data(i, data = {})
    {
      :type               => ManageIQ::Providers::CloudManager::Template.name,
      :uid_ems            => "image_uid_ems_#{i}",
      :ems_ref            => "image_ems_ref_#{i}",
      :name               => "image_name_#{i}",
      :location           => "image_location_#{i}",
      :vendor             => "amazon",
      :raw_power_state    => "never",
      :template           => true,
      :publicly_available => false,
    }.merge(data)
  end

  def hardware_data(i, data = {})
    {
      :bitness             => "64",
      :virtualization_type => "virtualization_type_#{i}",
    }.merge(data)
  end

  def image_hardware_data(i, data = {})
    {
      :guest_os => "linux_generic_#{i}",
    }.merge(data)
  end

  def disk_data(i, data = {})
    {
      :device_name => "disk_name_#{i}",
      :device_type => "disk",
    }.merge(data)
  end

  def public_network_data(i, data = {})
    {
      :ipaddress   => "10.10.10.#{i}",
      :hostname    => "host_10_10_10_#{i}.com",
      :description => "public"
    }.merge(data)
  end

  def flavor_data(i, data = {})
    {
      :name => "t#{i}.nano",
    }.merge(data)
  end

  def orchestration_stack_data(i, data = {})
    {
      :ems_ref       => "stack_ems_ref_#{i}",
      :name          => "stack_name_#{i}",
      :description   => "stack_description_#{i}",
      :status        => "stack_status_#{i}",
      :status_reason => "stack_status_reason_#{i}",
    }.merge(data)
  end

  def orchestration_stack_resource_data(i, data ={})
    {
      :ems_ref           => "stack_resource_physical_resource_#{i}",
      :name              => "stack_resource_name_#{i}",
      :logical_resource  => "stack_resource_logical_resource_#{i}",
      :physical_resource => "stack_resource_physical_resource_#{i}",
    }.merge(data)
  end
end
