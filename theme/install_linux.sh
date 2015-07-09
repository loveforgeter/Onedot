#!bin/bash
# Ask for su permission
sudo -v

# Install unity tweak tool(Theme Manager)
echo "Installing unity-tweak-tool to config theme"
sudo apt-get install -y unity-tweak-tool

echo "Adding theme ppa"
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:moka/stable
sudo apt-get update

THEMES=(
moka-gtk-theme
moka-icon-theme
numix-gtk-theme
numix-icon-theme
numix-icon-theme-circle
)

echo "Installing Moka and Numix Theme"

for THEME in ${THEMES[*]};do
  sudo apt-get install -y $THEME
done

echo "All themes installed!"
echo "A very nice icon theme , numix-icon-theme-square"
echo "At here http://mirror.umd.edu/antergos/antergos/i686/"

# numix-icon-theme-square -- a very nice icon theme
# http://mirror.umd.edu/antergos/antergos/i686/
