# PhysicsFS is a library to provide abstract access to various archives
cd ~
mkdir tmp/ && cd ~/tmp/
hg clone -r stable-2.0 http://hg.icculus.org/icculus/physfs/
cd physfs
sudo mkdir build
cd build
sudo cmake ..
sudo make
sudo make install
sudo mv /usr/local/lib/libphysfs.a /usr/lib/x86_64-linux-gnu/.