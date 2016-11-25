VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    # configure box
    config.vm.box = "ubuntu/xenial64"
    config.vm.hostname = "confluent-platform"

    # configure VirtualBox settings
    config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--name", "Confluent Platform"]
        vb.customize ["modifyvm", :id, "--cpus", "1"]
        vb.customize ["modifyvm", :id, "--memory", "2048"]
        vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    # disable default /vagrant synced folder
    config.vm.synced_folder ".", "/vagrant", disabled: true

    # mount volume directory
    config.vm.synced_folder "./volume/", "/home/ubuntu/volume/",
        owner: "ubuntu", group: "ubuntu"

    # commands to run during provisioning
    config.vm.provision "shell", inline: <<-SHELL
        apt-get update
        apt-get install -y make
        apt-get install -y default-jre
    SHELL
end
