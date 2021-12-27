# ivan32rus_infra
ivan32rus Infra repository

#servers
bastion_IP = 51.250.3.161
someinternalhost_IP = 10.128.0.20

##DZ
ssh -i ~/.ssh/id_rsa -A appuser@51.250.3.161 -tt ssh 10.128.0.20

##DopDZ
#touch config in dir ~/.ssh
Host someinternalhost
    HostName 10.128.0.20
    User appuser
    IdentityFile  ~/.ssh/id_rsa
    ProxyJump appuser@51.250.3.161
#    #ForwardAgent yes
