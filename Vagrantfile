Vagrant.configure("2") do |config|  
  config.vm.box = "hashicorp/bionic64"
  config.vm.network "forwarded_port", guest: 80, host: 8070
  config.vm.network "public_network", ip: "192.168.1.55"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.synced_folder "site/", "/var/www/html"
  #config.vm.provision "file", source: "my.cnf", destination: "/etc/mysql"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end