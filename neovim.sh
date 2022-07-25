#!/bin/bash

:source %
:PlugInstall

#Teclas de uso de neoVim
# Modo normal: 
#   Ejecutar comandos: :<comando> <enter>
#     :q salir
#     :q! salir y guardar
#     v -> modo visual

#   Desplazarse por nvim:
#     j -> abajo
#     k -> arriba
#     l -> derecha
#     h -> izquierda

#   Insertar texto: 
#     i -> por la parte izquierda
#     a -> por la parte derecha
#     I -> al principio de linea
#     A -> al final de linea

#   Borrar + insertar:
#     c -> lo mismo que "d"
#     C ->
#     s -> borrar caracter y entra en modo insertar
#     S -> 

#   Deshacer y rehacer (en modo normal)
#     u -> deshacer
#     ctr r -> rehacer

#   Guardar archivo -> :w 

#   Abrir archivo -> :e

# Modo visual:
#   V -> selecciona toda la línea
#   y -> copiar
#   p -> pegar en la siguiente linea
#   yy -> seleccionar toda la linea y copiar










##########################################

# Instalación de neoVim
sudo apt install neoVim

echo "Poner vim como alias a neoVim"

