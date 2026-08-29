#!/bin/bash
if [ "$1" = "-d" ]; then
#pkill -f "consolidar.sh" 
echo "Eliminando entorno y finalizando procesos en background"
rm -rf "$HOME/EpNro1"
echo "Entorno eliminado con exito"
exit 0
fi
ejecutando=true
ARCHIVO=./salida/FILENAME.txt
while $ejecutando; do
  echo "1) Crear entorno"
  echo "3) Mostrar listado de alumnos"
  echo "7) Salir"
  read -p  "Seleccioná una opcion: " opcion
  case $opcion in
  1) echo "Creando entorno..."
     mkdir -p "$HOME/EpNro1"/{entrada,salida,procesado}
     echo "El entorno se creo con exito"
     ;;
  3) if [[ -f $ARCHIVO ]]; then
      #El comando sort ordena el contenido del .txt 
      #y con -n lo haces en base al número del padrón
      sort -n $ARCHIVO
     else
      echo "No existe el archivo FILENAME.txt"
     fi
     ;;    
  7) echo "saliendo nos vemos pronto" 
     #Se termina el bucle
     ejecutando=false
     ;;

  esac
done
