
# 1. Install dependencies

sudo apt-get install autoconf automake libgtk-3-dev

# 2. Remove older versions

sudo rm -rf /usr/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark}
rm -rf ~/.local/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark}
rm -rf ~/.themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark}

# 3. Build and install

cd ~/packages/themes/arc-flatabulous-theme/
./autogen.sh --prefix=/usr
sudo make install

echo "Arc-Flatabulous-Theme installed."
# *. Uninstall themes
# sudo make uninstall
# or
# sudo rm -rf /usr/share/themes/{Arc-Flatabulous,Arc-Flatabulous-Darker,Arc-Flatabulous-Dark}

