CAN
===

USB-CAN
-------

We at Dyno use two slightly different USB can interfaces.
 - 70200_ from Auvidea with muCAN_ firmware
 - CANable_ with cantact_ firmware

.. _70200: https://www.mouser.se/ProductDetail/Auvidea/70200?qs=sGAEpiMZZMuDw7xUFNwm7OMzTlXceEzJbUkHbSjvTU4%3D
.. _muCAN: https://github.com/thiemar/mucan
.. _CANable: https://canable.io/
.. _cantact: https://github.com/normaldotcom/cantact-fw

Both of these are clones of `Lawicel CANUSB`__. Full instructions for
setup and troubleshooting with socketcan on Linux can be found here_.

.. _Lawicel: https://www.lawicel-shop.se/lawicel-canusb-adapter-1m-usb-cable
__ Lawicel_

.. _here: http://pascal-walter.blogspot.com/2015/08/installing-lawicel-canusb-on-linux.html

Here are the necessary steps in short form:
 - Copy ``90-slcan.rules`` from this repo to ``/etc/udev/rules.d/``.
 - Copy the contents of the ``slcan`` folder in this repo to ``/usr/local/bin`` and make sure the scripts are exucutable.
 - Run ``sudo atp-get install can-utils at`` in a terminal.
 - Add ``can``, ``can_raw`` and ``slcan`` to ``/etc/modules`` as a list (each goes in a separate line).
 - Restart the computer.
 
.. Note::
 With this default setup, the speed of the CAN bus is set to 1000 Kbit/s

To test that everyting is working, run ``candump can0`` in one terminal and ``cansend can0 123#DEADBEEF``.

You should see the message you sent in the terminal where you ran ``candump``.
