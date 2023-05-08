#!/bon/bash

per = $1
usu = $2
gp = $3
arch = $4

chmod $per $arch
chown $usu:$gp $arch

echo "Se modifico el $arch con exito" >> Script2.txt
