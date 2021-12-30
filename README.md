# ivan32rus_infra
ivan32rus Infra repository

#servers
bastion_IP = 62.84.126.191
someinternalhost_IP = 10.128.0.18

##DZ
ssh -i ~/.ssh/id_rsa -A appuser@62.84.126.191 -tt ssh 10.128.0.18

##DopDZ
#touch config in dir ~/.ssh
Host someinternalhost
    HostName 10.128.0.18
    User appuser
    IdentityFile  ~/.ssh/id_rsa
    ProxyJump appuser@62.84.126.191
#    #ForwardAgent yes
