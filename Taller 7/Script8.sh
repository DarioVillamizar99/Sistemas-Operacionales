#!/bin/bash

bytes=1 

arch="Script7.log"

tam=$(du -b $archivo | cut -f 1)

if [ $tam -gt $bytes ]
then
  gzip $arch
  echo "Archivo $arch comprimido correctamente."
fi
