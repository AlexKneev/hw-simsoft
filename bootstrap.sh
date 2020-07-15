#!/usr/bin/env bash


bootstrap() {
  sudo apt-get update

  echo "Installing dependencies..."
  echo ""
  sudo apt-get -y install python3-pip


  echo "Installing pip packages..."
  sudo su - vagrant -c "pip install -r /vagrant/hw-simsoft/requirements.txt"

  sudo su - vagrant -c "echo \"alias runserver='python3 /vagrant/hw-simsoft/app.py'\" >> ~/.profile"

  echo "DONE! ENJOY, br0!"
  echo "To run Flaskex_demo project type 'runserver'"
  echo "You can reach your webapp on host machine @ 8500 port"

}

export DEBIAN_FRONTEND=noninteractive

bootstrap
