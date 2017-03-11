sudo apt-get install build-essential cmake git-core
sudo apt-get install libboost1.58-all-dev libphysfs-dev libssl-dev liblua5.1-0-dev
sudo apt-get install libglew-dev libvorbis-dev libopenal-dev zlib1g-dev

cd ~/projects/otclient
mkdir build && cd build
cmake ..
make
./otclient