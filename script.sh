#!/bin/sh

#Actualizo el sistema
sudo apt install && sudo apt upgrade
#Instalo dependencias bases
sudo apt -y install --no-install-suggests --no-install-recommends xserver-xorg-core software-properties-common broadcom-sta-dkms cmake libfreetype6-dev libfontconfig1-dev xclip build-essential libx11-dev libxft-dev sakura thu$git clone https://github.com/baskerville/bspwm.git
#Instalo BSPWM
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


#Agregar archivo XINIT
#Cambiar configuracion bspwm y sxhkd 
#Agregar TINT2 configuracion
#Agregar transparencia
#Agregar configuracion de sakura



