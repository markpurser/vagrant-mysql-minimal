
Vagrant.configure("2") do |config|
  config.vm.box = "minimal/centos7"

  config.vm.network "forwarded_port", guest: 3306, host: 33060

  config.vm.provision "shell", path: "script.sh"
end
