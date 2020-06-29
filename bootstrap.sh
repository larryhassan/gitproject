#!/usr/bin/env bash

if [ ! $VAGRANT_INITIALIZED ]; then
  echo "export VAGRANT_INITIALIZED=true" >> ~/.profile

  rm -rf /var/www
  ln -fs /vagrant /var/www
  ln -fs /vagrant /home/vagrant/hacker_you

  echo "set completion-ignore-case on" >> /etc/inputrc

  echo "export LC_CTYPE=en_US.UTF-8" >> /home/vagrant/.profile
  echo "export LANG=en_US.UTF-8" >> /home/vagrant/.profile
  echo "unset LC_ALL" >> /home/vagrant/.profile

fi;

chmod u+x /vagrant/*.sh
sudo -u vagrant -i /vagrant/rbenv.sh
sudo -u vagrant -i /vagrant/rails.sh
