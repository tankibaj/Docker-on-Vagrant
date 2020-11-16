# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|


    #------ VM Box Settings ------#

    config.vm.box = "ubuntu/bionic64"
    config.vm.hostname = "docker.test"



    #------ VM Provider Settings ------#

    config.vm.provider "virtualbox" do |vb|
    	vb.name = "ubuntu-docker"
        vb.gui = false                                                                                                     # Display the VirtualBox GUI when booting the machine
        vb.memory = "1024"                                                                                                 # Customize the amount of memory on the VM
        #vb.cpus = 4                                                                                                       # Customize the amount of cpu on the VM
    end



    #------ Network Settings ------#

    #config.vm.network "forwarded_port", guest: 80, host: 8080                                                              # Create a forwarded port mapping which allows access to a specific port
                                                                                                                            # within the machine from a port on the host machine. In the example below,
                                                                                                                            # accessing "localhost:8080" will access port 80 on the guest machine.
                                                                                                                            # NOTE: This will enable public access to the opened port

    #config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"                                        # Create a forwarded port mapping which allows access to a specific port
                                                                                                                            # within the machine from a port on the host machine and only allow access
                                                                                                                            # via 127.0.0.1 to disable public access

    config.vm.network "private_network", ip: "10.0.0.10"                                                                    # Create a private network, which allows host-only access to the machine using a specific IP.

    #config.vm.network "public_network"                                                                                     # Create a public network, which generally matched to bridged network.
                                                                                                                            # Bridged networks make the machine appear as another physical device on your network.


    #------ Folder Settings ------#

    config.vm.synced_folder "./docker", "/home/vagrant/docker", type: "nfs", id: "docker-home"
    #config.vm.synced_folder "./data", "/home/vagrant/data", type: "nfs", id: "data-directory"
                                                                                                                            # Share an additional folder to the guest VM. The first argument is
                                                                                                                            # the path on the host to the actual folder. The second argument is
                                                                                                                            # the path on the guest to mount the folder. And the optional third
                                                                                                                            # argument is a set of non-required options.
                                                                                                                            # config.vm.synced_folder "../data", "/vagrant_data"

     #------ Provisioning Settings ------#

     config.vm.provision "shell", path: "bootstrap.sh"                                                                      # Enable provisioning with a shell script. Additional provisioners such as
                                                                                                                            # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
                                                                                                                            # documentation for more information about their specific syntax and use.
                                                                                                                            # config.vm.provision "shell", inline: <<-SHELL
                                                                                                                            #   apt-get update
                                                                                                                            #   apt-get install -y apache2
                                                                                                                            # SHELL

end