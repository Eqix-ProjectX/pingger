# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "apopa/focal64"
  config.vm.hostname = "pingger"
  config.vm.provision "shell", path: "boot/bootstrap.sh"
end
