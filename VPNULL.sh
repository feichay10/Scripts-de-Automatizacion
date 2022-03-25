#!/bin/bash

###### Instalacion de la VPN en Linux #####
# sudo apt-get -y update
# sudo apt install -y network-manager-vpnc-gnome
# sudo cat > /etc/vpnc/ull.conf << EOF
# IPSec gateway vpn.ull.es
# IPSec ID ULL
# IPSec secret usu4r10s
# EOF

opcion=

echo "Script para entrar a la VPN de la ULL
      0) Para salir
      1) Para conectarse a la VPN
      2) Para desconectarse a la VPN
      "
echo -n "Introduzca una opcion: "
read opcion

case $opcion in
  0) 
    exit
    ;;
  1)
    echo "Conectando con la VPN de la ULL..."
    sudo vpnc ull.conf
    ;;
  2) 
    echo "Desconectando de la VPN de la ULL..."
    sudo vpnc-disconnect 
    ;;
  *)
    echo "Opcion no valida. 0) Salir, 1) Para conectarse 2) Para desconectarse"
esac
#Para desconectarse de la conexión VPN: sudo vpnc-disconnect
