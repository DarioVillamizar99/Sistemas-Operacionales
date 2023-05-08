#!/bin/bash

bash Script1.sh


sudo adduser usu1
sudo adduser usu2
sudo adduser usu3
sudo groupadd gp1
sudo usermod -aG gp1 usu2
sudo usermod -aG gp1 usu3
./Script2.sh 777 usu1 gp1 Script2.txt


bash Script4.sh

bash Script5.sh Script1.txt Script4.sh

bash Script6.sh

dos2unix Script7.sh
bash Script7.sh

dos2unix Script8.sh
bash Script8.sh

