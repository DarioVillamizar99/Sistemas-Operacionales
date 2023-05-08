#!/bin/bash

arch = Script7.log

fecha = $(date +%Y-%m-%d)
hora = $(date +%H:%M:%S)

carga = $(uptime | awk '{print $10}')
memoria_libre = $(free -m | grep Mem | awk '{print $4}')

echo "Registro = Host: $(hostname) $fecha $hora Load: $carga Mem: $memoria_libre" >> $arch
echo "Registro agregado en $arch"
