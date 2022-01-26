#for connect
testapp_IP = 51.250.10.44 
testapp_port = 9292

#create instance
#!/bin/bash
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-2004-lts,size=13GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./config-scripts/metadata.yaml \

#DZ ansible-1
Add 2 hosts: reddit-app(62.84.124.227) and reddit-db(62.84.125.183) 

#DZ 
rm -rf rm -rf ~/reddit удалит скаченный репозиторий из каталога  ~/reddit рекурсионно, без подтверждения

#DZ* 
Главное отличие json генерируемого скриптом, от статического json в налчии секции _meta с информацией о всех переменных хостов. 
Так же, в динамическом json не получится использовать алиасы для хостов, т.к. хосты необходимо передавать массивом, а не объектом.
Add inventory.py
./inventory.py --list
ansible all -i inventory.py -m ping
ansible all -i inventory.py -m debug -a reddit-app
ansible all -i inventory.py -m debug -a reddit-db

