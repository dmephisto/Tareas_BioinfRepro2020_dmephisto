#### Script Tarea 3.4
## Cargar los paquetes "ade4" y "ggplot2"
library(ade4)
library(ggplot2)

## Abrir el archivo reads.txt ubicado en  
# PracUni3/ejemplosgenerales/data/reads.txt
reads<-read.delim(file = "../data/reads.txt")

## Dar un vistazo de que hay en reads
head(reads)

## Crear un barplot con reads
# Cambiar colores que se utilizaran por libreria
palette(c("blue", "purple", "pink"))

# Cambiar el nombre de los ejes  y colocarle el titulo "Barplot Tarea 3.4"
# Eje X= Library
# Eje Y= nreads
barplot(reads$nreads, names.arg = reads$Library, 
        xlab = "Libraries", ylab = "nreads", 
        main = "Barplot Tarea 3.4", col=reads$Library)










