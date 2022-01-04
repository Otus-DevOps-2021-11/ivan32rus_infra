#FOR TEST_HOST UBUNTU 20.04 SERVER

bastion_IP = 51.250.12.180
someinternalhost_IP = 10.128.0.18

#Основное задание
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
#Подключение в одну команду
ssh -i ~/.ssh/id_rsa -A appuser@51.250.12.180 -tt ssh someinternalhost

#Дополнительное задание
#создаем файл confid в директории ~/.ssh
touch config in dir ~/.ssh
#В файле config вносим следующие данные:
Host someinternalhost
    HostName 10.128.0.18
    User appuser
    IdentityFile  ~/.ssh/id_rsa
    ProxyJump appuser@51.250.12.180
    ForwardAgent yes

#Задание с Pritunl сервером
#конфиграционный файл:
setupvpn.sh
#Сгенерированный файл с серсвера Pritunl для подключения VPN
cloud-bastion.ovpn

#Дополнительное задание 
#Реализовано с использованрием сервиса sslip.io
https://51.250.12.180.sslip.io
