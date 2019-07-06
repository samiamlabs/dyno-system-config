Balena
======

NVM
---

Balena CLI reuqires npm to install.

.. code:: bash

  curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
  bash install_nvm.sh
  source ~/.profile
  nvm install 10.16.0
  nvm alias default 10.16.0
  nvm use default

To get nvm working with sudo, use the following commands:

.. code:: bash

  n=$(which node); \
  n=${n%/bin/node}; \
  chmod -R 755 $n/bin/*; \
  sudo cp -r $n/{bin,lib,share} /usr/local

balena CLI
----------

Installing

.. code:: bash

  npm install balena-cli -g --production --unsafe-perm
  sudo npm install balena-cli -g --production --unsafe-perm


Logging in

.. code:: bash

  balena login

For local mode developement tips, use this_ link.

.. _this: https://www.balena.io/docs/learn/develop/local-mode/
