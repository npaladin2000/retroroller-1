##Place in /roms/sh
##/bin/bash
ifconfig wlan0 | grep inet
read -p "Press enter to continue"
exit
