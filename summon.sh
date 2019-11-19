#!/bin/bash
function uninstall {

echo "WARNING : This will remove all applications installed through it"
echo -n "are you sure you want to do that? [y/n] : "
read confirmation

if [ "$confirmation" == "y" ]; then
    exit 0
else
  echo "keeping everything intact"
  exit 0
fi

}

if [ "$1" == "uninstall" ]; then
    uninstall
fi

echo "=============================="
echo "Setting up your EC2 LEMP Stack"
echo "=============================="

sudo easy_install pip
sudo pip install ansible

echo "========================"
echo "Clone Ansible Repository"
echo "========================"

installdir="/tmp/summon-$RANDOM"
mkdir $installdir

git clone https://github.com/Quynh-Nguyen/ec2-lemp-ansible.git $installdir
if [ ! -d $installdir ]; then
    echo "Failed to find Ansible EC2 LEMP Stack."
    echo "git cloned failed"
    exit 1
else
    cd $installdir

    echo "========================="
    echo "Ansible Playbook Progress"
    echo "========================="

    ansible-playbook -i ./hosts site.yml --verbose
fi