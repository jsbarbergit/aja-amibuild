sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y pure-ftpd
sudo chkconfig --add pure-ftpd
sudo chkconfig --level 235  pure-ftpd on
# TO DO add config file
sudo chmod +x /etc/rc.local
sudo echo "pure-uploadscript -B -r /opt/uploadscript.sh" >> /etc/rc.d/rc.local
