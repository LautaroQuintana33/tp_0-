#!/bin/bash
if [ "$1" = "-d" ]; then
#pkill -f "consolidar.sh"
echo "Eliminando entorno y finalizando procesos en background"
rm -rf "$HOME/EPNro1"
echo "Entorno eliminado con exito"
exit 0
fi
ejecutando=true
ARCHIVO="$HOME/EPNro1/salida/${FILENAME}.txt"
while $ejecutando; do
  echo "1) Crear entorno"
  echo "2) Correr proceso"
  echo "3) Mostrar listado de alumnos"
  echo "5) Buscar por número de padrón"
  echo "7) Salir"
  read -p  "Seleccioná una opcion: " opcion
  case $opcion in
  1) echo "Creando entorno..."
     mkdir -p "$HOME/EPNro1"/{entrada,salida,procesado}
     echo "El entorno se creo con exito"
     ;;

  2) echo "Iniciando el proceso..."
     bash ./consolidar.sh &
     ;;

  3) if [[ -f $ARCHIVO ]]; then
      #El comando sort ordena el contenido del .txt
      #y con -n lo haces en base al número del padrón
      sort -n $ARCHIVO
     else
      echo "No existe el archivo FILENAME.txt"
     fi
     ;;

  5) read -p "Ingrese un número de padrón: " padron
     if [ -f "$ARCHIVO" ]; then
      grep -w "^$padron" "$ARCHIVO" || echo "No se encontraron resultados"
     else
      echo "Aún no existe el archivo"
     fi 
     ;;

  7) echo "saliendo nos vemos pronto"
     #Se termina el bucle
     ejecutando=false
     ;;

  esac
done
