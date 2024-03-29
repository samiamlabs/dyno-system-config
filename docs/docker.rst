Docker
======

Install docker by running:

.. code:: bash

  sudo apt update
  sudo apt install apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
  sudo apt update
  sudo apt install docker-ce

Check that installation is successful:

.. code:: bash

  sudo systemctl status docker

Run docker without sudo:

.. code:: bash

  sudo usermod -aG docker ${USER}
  
Restart the computer for the groups to update.

Install docker-compose by running:

.. code:: bash

  sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
