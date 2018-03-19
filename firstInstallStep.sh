#install proper conf file on root 
cd
screen -v > /root/scrt.txt
mkdir /var/log/sentinel
git clone https://github.com/masternodes/vps.git
cd vps/
awk '{gsub("https://github.com/dashpay/sentinel.git", "https://github.com/innovacoin/sentinel.git", $0); print}' install.sh > outputx
mv install.sh install.bak
mv outputx install.sh
chmod +x install.sh
./install.sh -p innova -n 4 
/usr/local/bin/activate_masternodes_innova
rm -f /etc/masternodes/innova_n1.conf
/usr/local/bin/activate_masternodes_innova
#cp /root/ /etc/masternodes/innova_n1.conf
#copy proper conf file
chown -R masternode:masternode /root/finalInnova.conf
cp /root/finalInnova.conf /etc/masternodes/innova_n1.conf  
mkdir /home/masternode/.innovacore/

cd /home/masternode
sudo apt-get update
sudo apt-get install -y git python-virtualenv
mkdir sentineldir
cd sentineldir
git clone https://github.com/coolblock/innova_sentinel.git
mv ./innova_sentinel ./sentinel
cd sentinel
sudo apt-get install -y virtualenv
virtualenv venv
venv/bin/pip install -r requirements.txt
rm sentinel.conf
cp /root/sentinel.conf sentinel.conf
chown -R masternode:masternode /home/masternode/
(crontab -l 2>/dev/null; echo "* * * * * /root/runsentinel.sh") | crontab -
crontab -l

touch /root/installCompleted
reboot
