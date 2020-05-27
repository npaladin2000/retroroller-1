##/bin/bash

LINK="https://raw.githubusercontent.com/shantigilbert/binaries/master/odroid-xu4/drastic.tar.gz"
LINKDEST="~/drastic.tar.gz"
wget -O $LINKDEST $LINK
tar xvf $LINKDEST 
rm $LINKDEST
sudo mkdir /opt/drastic
sudo cp ~/drastic/drastic /opt/drastic/
