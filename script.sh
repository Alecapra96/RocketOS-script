#!/bin/sh

#Actualizo el sistema
sudo apt -y install && sudo apt -y upgrade
sudo apt --fix-missing update
sudo apt -y install && sudo apt -y upgrade
sleep 5 
#Instalo dependencias bases
sudo apt -y install --no-install-suggests --no-install-recommends xserver-xorg-core software-properties-common broadcom-sta-dkms cmake libfreetype6-dev libfontconfig1-dev xclip build-essential libx11-dev libxft-dev sakura build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev
#Instalo BSPWM
sleep 5 
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm/
make
sudo make install
cd ../sxhkd/
make
sudo make install
sleep 5 
sudo apt -y install bspwm
sleep 5 
#Creo Los archivos de configuracion
mkdir ~/.config
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
sleep 5 
cd ../bspwm/
cp examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc
cp examples/sxhkdrc ~/.config/sxhkd/
sleep 5 
#Instalo el script de startx
sudo apt -y install xinit
sleep 5 
#Creo el archivo .xinitrc
cp ~/RocketOS-script/.xinitrc ~/.xinitrc
sleep 5 

#Instalo programas base 
sudo apt -y install --no-install-suggests --no-install-recommends thunar screenfetch neofetch git lxappearance-obconf lxappearance rofi htop feh libgtk-3-dev compton rdesktop  
sleep 5 
sudo apt -y install slim tint2 xtern
sleep 5 
tint2
sleep 5
#borro snapd que esta al pedo
sudo apt -y purge snapd
sleep 5 
#Cambiar configuracion bspwm y sxhkd 
    #LINA 127 dl sxhkdrc hay que poner un $hostname
cp ~/RocketOS-script/sxhkdrc ~/.config/sxhkd/
sleep 5 
#Creo el script del bspwm
    #Crear si no existe
mkdir ~/.config/bspwm/scripts/
cp ~/RocketOS-script/bspwm_resize ~/.config/bspwm/scripts/
sleep 5 
sudo chmod +x ~/.config/bspwm/scripts/bspwm_resize

#Agregar TINT2 configuracion
sleep 5 
    #Borrar si existe
#rm ~/.config/tint2/tint2rc
cp ~/RocketOS-script/tint2rc ~/.config/tint2/
sleep 5 
#Agregar transparencia
#Agregar configuracion de xterm
cp ~/rocketOS-script/.Xresources ~/
xrdb -merge ~/.Xresources
sleep 5 
#configuro Slim
cd ~/RocketOS-script/
git clone https://github.com/adi1090x/slim_themes
sleep 5 
cp ~/RocketOS-script/slim_themes/themes/hello /usr/share/slim/themes
sudo sed -i '37s+.*+ login_cmd           exec /bin/bash - ~/.xinitrc %session +g' /etc/slim.conf
sudo sed -i '70s+.*+default_user       v4ntush+g' /etc/slim.conf
sudo sed -i '83s+.*+current_theme       hello+g' /etc/slim.conf
#kill -9 -1
