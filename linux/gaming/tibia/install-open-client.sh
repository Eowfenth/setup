# Installing depedencies
echo "Installing dependencies."
sudo apt-get install build-essential cmake git-core libboost1.58-all-dev libphysfs-dev libssl-dev liblua5.1-0-dev libglew-dev libvorbis-dev libopenal-dev zlib1g-dev

echo "Installing client"
cd ~/projects/ilium/ 
git clone git://github.com/edubart/otclient.git client
cd client
mkdir build && cd build
cmake ..
make
./otclient