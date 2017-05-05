# Version 0.0.1

# 1. Install Dynamic Panel Transparency

echo "Installing: dynamic-panel-transparency gnome extension"
cd ~/packages/extensions/
git clone https://github.com/rockon999/dynamic-panel-transparency.git && cd dynamic-panel-transparency/
cp -R ./ ~/.local/share/gnome-shell/extensions/

echo "Extension installed"