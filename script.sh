#!/bin/sh

#Actualizo el sistema
sudo apt install && sudo apt upgrade

#Instalo dependencias bases
sudo apt -y install --no-install-suggests --no-install-recommends xserver-xorg-core software-properties-common broadcom-sta-dkms cmake libfreetype6-dev libfontconfig1-dev xclip build-essential libx11-dev libxft-dev sakura build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev 
#Instalo BSPWM
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm/
make
sudo make install
cd ../sxhkd/
make
sudo make install
sudo apt install bspwm
#Creo Los archivos de configuracion
mkdir ~/.config
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
cd ../bspwm/
cp examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc
cp examples/sxhkdrc ~/.config/sxhkd/

#Instalo el script de startx
sudo apt -y install xinit
#Creo el archivo .xinitrc
sudo mv ~/RocketOS-script/.xinitrc ~/.xinitrc



#Instalo programas base 
sudo apt -y install --no-install-suggests --no-install-recommends thunar screenfetch neofetch slim git lxappearance-obconf lxappearance rofi htop feh obmenu pulseaudio volti wicd tint2 libgtk-3-dev compton rdesktop  



#Cambiar configuracion bspwm y sxhkd 
#Agregar TINT2 configuracion
#Agregar transparencia
#Agregar configuracion de sakura



