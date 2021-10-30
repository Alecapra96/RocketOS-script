#!/bin/sh

#Actualizo el sistema
sudo apt -y install && sudo apt -y upgrade

#Instalo dependencias bases
sudo apt -y install --no-install-suggests --no-install-recommends xserver-xorg-core software-properties-common broadcom-sta-dkms cmake libfreetype6-dev libfontconfig1-dev xclip build-essential libx11-dev libxft-dev sakura build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev
#Instalo BSPWM
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm/
make
sudo make install
cd ../sxhkd/
make
sudo make install
sudo apt -y install bspwm
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
sudo apt -y install thunar screenfetch neofetch slim git lxappearance-obconf lxappearance rofi htop feh tint2 libgtk-3-dev compton rdesktop  

#borro snapd que esta al pedo
sudo apt -y purge snapd

#Cambiar configuracion bspwm y sxhkd 
    #LINA 127 dl sxhkdrc hay que poner un $hostname
sudo mv ~/RocketOS-script/sxhkdrc ~/.config/sxhkd/

#Creo el script del bspwm
mkdir ~/.config/bspwm/scripts/
sudo mv ~/RocketOS-script/bspwm_resize ~/.config/bspwm/scripts/
sudo chmod +x ~/.config/bspwm/scripts/bspwm_resize


#Agregar TINT2 configuracion
sudo rm ~/.config/tint2/tint2rc
sudo mv ~/RocketOS-script/tint2rc ~/.config/tint2/

#Agregar transparencia
#Agregar configuracion de sakura



