# udev_stick_of_fortune
udev rule which detects specific rule and show popup with fortune message

udev rule which detects specific usb stick and run bash script which creates popup with fortune message.

Configuration:
RUN parameter in 80-pendrive_of_fortune.rules needs to point to the pendrive_popup.sh script location.

Known issues:
Ubuntu does ignores expire-time parameter in notify-send (https://bugs.launchpad.net/ubuntu/+source/notify-osd/+bug/390508)
