#!/bin/bash

VIM="which vim"
vacio=""

sudo apt purge nautilus gnome-shell-extension-desktop-icons -y

sudo apt install nemo -y

xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

gsettings set org.gnome.desktop.background show-desktop-icons false

gsettings set org.nemo.desktop show-desktop-icons true

echo "Ahora va a editar un fichero y tendra que introducir el siguiente \"codigo\" (dentro de este script) para seguir con la instalacion: "
echo "ENTER para continuar: "
read vacio
$vacio > /dev/null

$VIM > /dev/null || sudo vim /etc/xdg/autostart/nemo-autostart.desktop

# Copia este contenido en el fichero:
# [Desktop Entry]
# Type=Application
# Name=Files
# Exec=nemo-desktop
# OnlyShowIn=GNOME;Unity;
# X-Ubuntu-Gettext-Domain=nemo

# Reinicia el PC
# reboot
