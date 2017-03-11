

# Build

function() {
    build
}

cd $TFS_PATH;
mkdir build && cd build
cmake ..
make

# Clean 

rm -rf build


# Rebuild

