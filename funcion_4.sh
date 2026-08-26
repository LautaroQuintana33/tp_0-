#bin/bash
ARCHIVO="salida/FILENAME.txt"

if [ -f "$ARCHIVO" ]; then
	sort -k 5 -rn $ARCHIVO | head -10
else
	echo "Error no existe el archivo FILENAME"
fi
 
