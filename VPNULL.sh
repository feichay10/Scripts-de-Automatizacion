#!/bin/bash

VPNC="which vpnc"
opcion=
etiqueta=0

$VPNC > /dev/null || etiqueta=1

if [ "$etiqueta" == "0" ]; then
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
      echo "Opcion no valida. 0) Salir, 1) Para conectarse, 2) Para desconectarse"
  esac
else
  if [ "$(whoami)" == "root" ]; then
    apt-get -y update
    apt install -y network-manager-vpnc-gnome
    touch /etc/vpnc/ull.conf
    echo "IPSec gateway vpn.ull.es" > /etc/vpnc/ull.conf
    echo "IPSec ID ULL" >> /etc/vpnc/ull.conf
    echo "IPSec secret usu4r10s" >> /etc/vpnc/ull.conf
  else
    echo "Para ejecutar el script tienes que ser root"
  fi
fi
