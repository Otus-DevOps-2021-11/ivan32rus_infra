#FOR TEST_HOST UBUNTU 20.04 SERVER

bastion_IP = 51.250.12.180
someinternalhost_IP = 10.128.0.18

#DZ
#eval `ssh-agent -s`
#ssh-add ~/.ssh/id_rsa
#ssh -i ~/.ssh/id_rsa -A appuser@51.250.12.180 -tt ssh someinternalhost
#DopDZ
#touch config in dir ~/.ssh
#Host someinternalhost
#    HostName 10.128.0.18
#    User appuser
#    IdentityFile  ~/.ssh/id_rsa
#    ProxyJump appuser@51.250.12.180
#    ForwardAgent yes
##----------------------------------	
#Запускаем на bastion
#sudo pritunl
#добавляем  .ovpn полученный от сервера 
#sudo nmcli connection import type openvpn file cloud-bastion.ovpn
#возможно понадобиться cd /etc/netplan
#network:
#  renderer: NetworkManager
#далее
#sudo nmcli connection up Otus_Studies_test_someinternalhost --ask
#вводим pin
##----------------------------------
#DopDZ 
#Реализовано
#использование валидного сертификата для панели управления VPNсервера
#sslip.io
#https://51.250.12.180.sslip.io/login
