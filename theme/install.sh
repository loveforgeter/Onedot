#!bin/bash
set -e
# Install nice gtk theme(Moka and Numix)
if ! [[ -d $SCRIPT_PATH ]];then
	echo "SCRIPT_PATH not exist!"
	exit
fi

source $SCRIPT_PATH/utils.sh

if !$(IsUbuntu);then
	echo "Only works on ubuntu"
	exit
fi

# Ask for su permission
sudo -v

# Install unity tweak tool(Theme Manager)
echo "Installing unity-tweak-tool to config theme"
sudo apt-get install -y unity-tweak-tool

echo "Adding theme ppa"
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:moka/stable
sudo apt-get update

THEMES="
 moka-gtk-theme
 moka-icon-theme
 numix-gtk-theme
 numix-icon-theme
 numix-icon-theme-circle
"
echo "Installing Moka and Numix Theme"
sudo apt-get install -y $THEMES

echo "All themes installed!"
echo "Here is a very nice icon theme,numix-icon-theme-square"
echo "Get it here http://mirror.umd.edu/antergos/antergos/i686/"

# numix-icon-theme-square -- a very nice icon theme
# http://mirror.umd.edu/antergos/antergos/i686/
