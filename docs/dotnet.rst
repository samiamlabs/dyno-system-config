C#
==

.NET
----
Install `.NET Core`__ for Linux.

.. _dotnetGetStarted: https://www.microsoft.com/net/learn/get-started
__ dotnetGetStarted_

.. code:: bash

  wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  sudo add-apt-repository universe
  sudo apt-get install apt-transport-https
  sudo apt-get update
  sudo apt-get install dotnet-sdk-2.2

Check that installation worked:

.. code:: bash

  dotnet --version

Should version should be 2.2.x

Monodevelop
-----------

.. code:: bash

  sudo apt install apt-transport-https dirmngr
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
  echo "deb https://download.mono-project.com/repo/ubuntu vs-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-vs.list
  sudo apt update
  sudo apt-get install monodevelop

Usage: Navigate to project folder in terminal and run ```monodevelop <some_project>.csproj```
