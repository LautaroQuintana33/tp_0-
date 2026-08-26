#bin/bash

#esto hay que escribirlo como una funcion cuando ensamblemo todo.
#a la funcion hay que pasarle el archivo que va a pasar de entrada a procesado

echo "$date +'%d/%m/%Y %H:%M:%S') - procesado archivo $1" >> procesado.log #siendo $1 el modo que tiene C de guardar la variable que le pasas a la funcion 

#escrito como funcion quedaria algo asi
#guardar_log(){
#echo "$date +'%d/%m/%Y %H:%M:%S') - procesado archivo $1" >> procesado.log
#}

#a la funcion se le pasa la variable asi: guardar_log "$VARIABLE"
