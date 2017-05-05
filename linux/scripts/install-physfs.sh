# PhysicsFS is a library to provide abstract access to various archives
sudo apt-get install build-essential 
sudo apt-get install cmake
sudo apt-get install git-core 
sudo apt-get install libboost1.58-all-dev 
sudo apt-get install liblua5.1-0-dev 
sudo apt-get install libglew1.13 
sudo apt-get install libvorbis-dev 
sudo apt-get install libopenal-dev
sudo apt-get install libphysfs-dev
sudo apt-get install libglewmx-dev
sudo apt-get install libz3-dev
sudo apt-get install freeglut3-dev
sudo apt-get install libc6-dev-i386
sudo apt-get install doxygen
sudo apt-get install libncurses5-dev
sudo apt-get install mercurial

cd ~
mkdir tmp/ && cd ~/tmp/
hg clone -r stable-2.0 http://hg.icculus.org/icculus/physfs/ physfs
cd physfs
mkdir build
cd build
cmake ..
make
sudo make install
sudo mv /usr/local/lib/libphysfs.a /usr/lib/x86_64-linux-gnu/.