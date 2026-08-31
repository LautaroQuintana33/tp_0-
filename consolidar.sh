#!/bin/bash

ARCHIVO_SALIDA="$HOME/EPNro1/salida/${FILENAME}.txt"
ARCHIVO_LOG="$HOME/EPNro1/procesado.log"

while true; do
  for archivo in "$HOME/EPNro1/entrada/"*.txt; do 
      if [ -f "$archivo" ]; then
        cat "$archivo" >> "$ARCHIVO_SALIDA"
	mv "$archivo" "$HOME/EPNro1/procesado/"
        echo "$(date "+%d/%m/%Y %H:%M:%S") - procesando archivo $(basename "$archivo")" >> "$ARCHIVO_LOG"
      fi
  done

    sleep 15
done
