#!/bin/bash

opcion=

if [ "$(whoami)" == "root" ]; then
  sudo apt purge nautilus gnome-shell-extension-desktop-icons -y
  sudo apt install nemo -y
  xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
  settings set org.gnome.desktop.background show-desktop-icons false
  gsettings set org.nemo.desktop show-desktop-icons true
  echo "[Desktop Entry]" > /etc/xdg/autostart/nemo-autostart.desktop
  echo "Type=Application" >> /etc/xdg/autostart/nemo-autostart.desktop
  echo "Name=Files" >> /etc/xdg/autostart/nemo-autostart.desktop
  echo "Exec=nemo-desktop" >> /etc/xdg/autostart/nemo-autostart.desktop
  echo "OnlyShowIn=GNOME;Unity;" >> /etc/xdg/autostart/nemo-autostart.desktop
  echo "X-Ubuntu-Gettext-Domain=nemo" >> /etc/xdg/autostart/nemo-autostart.desktop

  echo "Para que se aplique los cambios tiene que reiniciar el equipo [Y/n]: "
  read opcion

  if [ "$opcion" == "y" ] || [ "$opcion" == "Y" ] ; then
    reboot
  elif [ "$opcion" == "n" ] || [ "$opcion" == "N" ]; then
    echo "No se ha reiniciado el equipo"
    exit 0
  else 
    echo "Opcion no valida"
    exit 1
  fi
else
  echo "Para ejecutar el script tienes que ser root"
fi