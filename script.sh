#!/bin/sh

#Actualizo el sistema
sudo apt -y install && sudo apt -y upgrade
sudo apt --fix-missing update
sudo apt -y install && sudo apt -y upgrade
wait 50000
#Instalo dependencias bases
sudo apt -y install --no-install-suggests --no-install-recommends xserver-xorg-core software-properties-common broadcom-sta-dkms cmake libfreetype6-dev libfontconfig1-dev xclip build-essential libx11-dev libxft-dev sakura build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev
#Instalo BSPWM
wait 50000
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
wait 50000
cd bspwm/
make
sudo make install
cd ../sxhkd/
make
sudo make install
sudo apt -y install bspwm
wait 50000
#Creo Los archivos de configuracion
mkdir ~/.config
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
cd ../bspwm/
cp examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc
cp examples/sxhkdrc ~/.config/sxhkd/
wait 50000
#Instalo el script de startx
sudo apt -y install xinit
wait 50000
#Creo el archivo .xinitrc
sudo mv ~/RocketOS-script/.xinitrc ~/.xinitrc


wait 50000
#Instalo programas base 
sudo apt -y install --no-install-suggests --no-install-recommends thunar screenfetch neofetch git lxappearance-obconf lxappearance rofi htop feh libgtk-3-dev compton rdesktop  
sudo apt -y install slim tint2
#borro snapd que esta al pedo
sudo apt -y purge snapd
wait 50000
#Cambiar configuracion bspwm y sxhkd 
    #LINA 127 dl sxhkdrc hay que poner un $hostname
sudo mv ~/RocketOS-script/sxhkdrc ~/.config/sxhkd/

#Creo el script del bspwm
    #Crear si no existe
mkdir ~/.config/bspwm/scripts/
sudo mv ~/RocketOS-script/bspwm_resize ~/.config/bspwm/scripts/
sudo chmod +x ~/.config/bspwm/scripts/bspwm_resize

wait 50000
#Agregar TINT2 configuracion
    #Borrar si existe
sudo rm ~/.config/tint2/tint2rc
sudo mv ~/RocketOS-script/tint2rc ~/.config/tint2/
wait 50000
#Agregar transparencia
#Agregar configuracion de xterm
sudo mv ~/RocketOS-script/.Xresources ~/
xrdb -merge ~/.Xresources
wait 50000
#configuro Slim
cd ~/RocketOS-script/
git clone https://github.com/adi1090x/slim_themes
sudo cp ~/RocketOS-script/slim_themes/themes/hello /usr/share/slim/themes
wait 50000
sudo sed -i '37s+.*+ login_cmd           exec /bin/bash - ~/.xinitrc %session +g' /etc/slim.conf
sudo sed -i '70s+.*+default_user       v4ntush+g' /etc/slim.conf
sudo sed -i '83s+.*+current_theme       hello+g' /etc/slim.conf
wait 50000
#kill -9 -1
