Stm32
=====

Udev rules
----------

Copy `49-stlinkv2.rules` and `99-dfu.rules` from this repo to `/etc/udev/rules.d`.

Reload udev rules by running:

.. code:: bash

  sudo udevadm control --reload-rules && udevadm trigger


Firmware Build Dependencies
---------------------------

Install by running:

.. code:: bash

  sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa
  sudo apt-get update
  sudo apt-get install gcc-arm-embedded
  sudo apt-get install openocd
  sudo add-apt-repository ppa:jonathonf/tup && sudo apt-get update && sudo apt-get install tup

Install python 3.7:

.. code:: bash

  sudo apt install python3.7-dev

Set python3.7 to default python version in bash:

.. code:: bash

  echo "alias python=python3.7" >> ~/.bash_aliases

Verify successful installation and versions:

.. code:: bash

  arm-none-eabi-gcc --version
  arm-none-eabi-gdb --version
  openocd --version             # should be 0.10.0 or later
  tup --version                 # should be 0.7.5 or later
  python --version              # should be 3.7 or lat


Visual Studio Code
------------------

Download and install `Visual Studio Code`__.

.. _VSCode: https://code.visualstudio.com/download
__ VSCode_

Extensions:

  - C/C++
  - Cortex-Debug
  - PlatformIO IDE
