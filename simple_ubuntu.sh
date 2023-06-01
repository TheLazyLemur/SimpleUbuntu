#!/bin/bash

echo "Installing dependencies"

sudo apt install gcc g++ polybar compton rofi build-essential make libx11-dev libxft-dev libxinerama-dev pavucontrol pavucontrol-qt nitrogen sxhkd dmenu x11-xserver-utils kitty

echo "Finished installing dependencies"

echo "Installing Homebrew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/dan/.profile

echo "Finished installing Homebrew"

echo "Installing Berry WM"

git clone https://github.com/JLErvin/berry
cd berry
make
sudo make install
mkdir -p $HOME/.config/berry
cp examples/sxhkdrc $HOME/.config/berry/sxhkdrc
cp examples/autostart $HOME/.config/berry/autostart
cd ..

cp xinitrc $HOME/.xinitrc
