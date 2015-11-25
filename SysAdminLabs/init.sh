#!/bin/bash
sudo cat /vagrant/problem_statement.txt >> /etc/motd
echo " " >> /etc/motd
echo "sysadminlab training tools are installed." >> /etc/motd
rm /home/vagrant/.bash_profile
sudo cp /vagrant/SysAdminLabs/.bash_profile /home/vagrant/.bash_profile
sudo rm /root/.bash_profile; cp /vagrant/SysAdminLabs/.bash_profile /root/.bash_profile
chmod +x /vagrant/SysAdminLabs/sysadminlabs
/vagrant/SysAdminLabs/sysadminlabs --help >> /etc/motd
echo " " >> /etc/motd