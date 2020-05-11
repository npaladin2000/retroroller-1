##/bin/bash

LINK="https://raw.githubusercontent.com/shantigilbert/binaries/master/odroid-xu4/drastic.tar.gz"
LINKDEST="/opt/drastic.tar.gz"
wget -O $LINKDEST $LINK
tar xvf $LINKDEST 
rm $LINKDEST
cp ~/drastic.* /opt/drastic/config/
