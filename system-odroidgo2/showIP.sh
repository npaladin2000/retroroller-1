exec ifconfig wlan0 | grep inet && read -n 1 -r -s -p $"Press any key to exit" && "$@"
## place in /roms/sh
