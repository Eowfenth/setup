# Download Tibia - Tibia.dat  Tibia.pic  Tibia.spr
#!/bin/bash
VERSION=tibia1097
LOCALOT=~/projects/otclient/data/things
cd $LOCALOT
wget http://static.tibia.com/download/$VERSION.tgz
tar --wildcards -zxvf tibiaVERSION.tgz Tibia/Tibia.*
mkdir $VERSION
mv Tibia/Tibia.* $VERSION/.
rm $VERSION.tgz
rm -R Tibia/