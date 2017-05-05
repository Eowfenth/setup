# 1. Install dependencies
sudo apt-get install software-properties-common

# 2. Add the MariaDB repository signing key to be able to verify downloaded packages
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8

# 3. Add the MariaDB repository
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mirror.ufscar.br/mariadb/repo/10.1/ubuntu xenial main'

# 4. Update list of available packages
sudo apt update

# 5. Install MariaDB
sudo apt install mariadb-server
