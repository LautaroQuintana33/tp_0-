#!/bin/bash

ARCHIVO_SALIDA="$HOME/EPNro1/salida/${FILENAME}.txt"

while true; do
    for archivo in "$HOME/EPNro1/entrada/"*.txt; do 
        if [ -f "$archivo" ]; then
            cat "$archivo" >> "$ARCHIVO_SALIDA"
	    mv "$archivo" "$HOME/EPNro1/procesado/"
        fi
    done
    sleep 15
done
