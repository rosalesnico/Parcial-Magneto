# Parcial-Magneto
Se recibe como parámetro un array de strings que representan cada fila de una tabla. Los string solo pueden ser A,T,C,G.

La solicitud debe enviarse en formato JSON con el siguiente formato:
{
  "dna": ["ATGCGA", "CTGTGC", "TTGTGT", "AGAAGG", "CACCTA", "TCAATG"]
}

Si se encuentra mas de una secuencia de cuatro letras iguales, de forma oblicua, horizontal o vertical significa que es mutante.

Despues se aplica una función que verifica si hay presencia en la matriz de mutantes o no y se devuelve el resultado al usuario en base a eso.



