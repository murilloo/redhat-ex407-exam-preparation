ansible all -m yum_repository -a "name=rhel description=rhel baseurl=http://control.example.com/ gpgcheck=0 enabled=1"
