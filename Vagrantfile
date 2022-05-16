#
# Ansible learning environment
#
NETWORK_PREFIX = "192.168.150"

Vagrant.configure("2") do |config|

  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "bento/debian-11"
    ansible.vm.hostname = "ansible"
    ansible.vm.network :private_network, ip: "#{NETWORK_PREFIX}.100"
  end

  config.vm.define "debian" do |debian|
    debian.vm.box = "bento/debian-11"
    debian.vm.hostname = "debian"
    debian.vm.network :private_network, ip: "#{NETWORK_PREFIX}.10"
  end

  config.vm.define "rocky" do |rocky|
    rocky.vm.box = "bento/rockylinux-8"
    rocky.vm.hostname = "rocky"
    rocky.vm.network :private_network, ip: "#{NETWORK_PREFIX}.20"
  end

  config.vm.define "suse" do |suse|
    suse.vm.box = "bento/opensuse-leap-15"
    suse.vm.hostname = "suse"
    suse.vm.network :private_network, ip: "#{NETWORK_PREFIX}.30"
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "bento/ubuntu-20.04"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.network :private_network, ip: "#{NETWORK_PREFIX}.40"
  end

end
