$root_pw = 

# 1.A.1 Set locale

locale­-gen pt_BR pt_BR.UTF-­8

# 1.A.2 Install dependencies
sudo apt-get update
sudo apt-get install git cmake build-essential liblua5.2-dev libgmp3-dev libmysqlclient-dev libboost-system-dev libboost-iostreams-dev libpugixml-dev mariadb-server screen

# 1.B Create sudoless user

adduser gatekeeper
$user_pw 

# 2. Clone repositories

echo "Cloning database schema"
git clone https://github.com/Eowfenth/open-tibia-database.git ilium-database
git clone https://github.com/Eowfenth/open-tibia-database.git ilium-database-backup

# 3. Configure MariaDB

mysql-secure-installation

$sql_root_pw password
mysql -u root -p -e "CREATE DATABASE ilium;"
mysql -u root -p -e "CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -p -e "GRANT SELECT,INSERT,UPDATE,DELETE,DROP ON ilium.* TO 'user'@'localhost';"
mysql -u root -p ilium < ~/ilium-database/schema.sql
mysql -u root -p ilium < ~/ilium-database-backup/backup.sql


INSERT INTO `accounts` (`name`, `password`) VALUES ('kami', SHA1('password'));
INSERT INTO `players` (`name`, `account_id`, `conditions`) VALUES ('Kami', 1, '');
INSERT INTO `players` (`name`, `account_id`, `posx`, `posy`, `posz`, `town_id`, `conditions`) VALUES 
('Kami', 1, 5038, 30720, 7, 1, '');
INSERT INTO `players` (`name`, `account_id`, `posx`, `posy`, `posz`, `town_id`, `conditions`) VALUES ('Kami', 1, 23, 13, 7, 1, '');
posx = 5038
posy = 30720
posz = 7

exit

# Relog as gatekeeper
# 4. Build server and configure server

git clone https://github.com/Eowfenth/open-tibia-config.git ilium-config
git clone https://github.com/Eowfenth/open-tibia-map.git ilium-map
git clone https://github.com/Eowfenth/open-tibia-data.git ilium-data
git clone https://github.com/Eowfenth/open-tibia-compiled-server.git ilium-compiled
git clone https://github.com/Eowfenth/open-tibia-server.git ilium

# 4.A Build the server

cd ~/ilium
mkdir build && cd build
cmake ..
make

# 4.B Copy map and data folder

echo "Setting world and game information"

cd ~/ilium/
rm -rf data

cp -a ~/ilium-data/data/. ~/ilium/data/

mkdir -p ~/ilium/data/world/
cp -R ~/ilium-map/Ilium*.otbm ~/ilium/data/world/
cp ~/ilium-config/config.lua ~/ilium/

cp ~/ilium-compiled/tfs ~/ilium/

# 5. Configure and run API



# 6. Run server

cd ~/ilium/build/
./tfs

# 7. Updating map

cd ~/ilium-map/
git reset --hard
git fetch && git pull


# 7.B Serve map to the Ilium path

cp -R ~/ilium-map/ilium.otbm ~/ilium/data/world/

# 8. Updating data

cd ~/ilium-data/
git reset --hard
git fetch && git pull

# 8.B Serve data to the Ilium path

cp -a ~/ilium-data/data/. ~/ilium/data/
