#!/bin/bash

echo "Nombre primer archivo: "$1"" > Script5.txt
echo "nombre segundo archivo: "$2"" >> Script5.txt

echo "Tipo de archivo para ["$1"]: $(file -b  "%1")" >> Script5.txt
echo "Tipo de archivo para ["$2"]: $(file -b  "%2")" >> Script5.txt

echo "Tamaño para ["$1"] es:  $(stat -c %s "%1")" >> Script5.txt
echo "Tamaño para ["$2"] es:  $(stat -c %s "%2")" >> Script5.txt

echo "La cantidad de lineas: $(wc -l "$1")" >> Script5.txt
echo "La cantidad de lineas: $(wc -l "$2")" >> Script5.txt
