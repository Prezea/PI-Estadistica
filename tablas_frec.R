
#______________ TABLAS DE FRECUENCIAS Y GRÁFICOS ________________

# Se implementa la matriz iris

#--------------------------------------------------------
#        Exploración de la Matriz  Iris
#--------------------------------------------------------

# 1.- Importación de la matriz
data(iris)

# 2.- Exploración de la matriz
dim(iris)

# 3.- Nombre de las columnas
colnames(iris)

# 4.- Tipo de variables
str(iris)

# 5.- En busca de datos perdidos
anyNA(iris)

#-------------------------------------------------
#     Generación de tablas
#-------------------------------------------------

# 1.- Convertimos la matriz de datos a un data frame, se
#    Agrupan los valores para la variable Petal.Length 
#    y se calcula la frecuencia absoluta.

tabla_PL<-as.data.frame(table(PL = iris$Petal.Length))


# 2.- Frecuencia absoluta de la variable Petal.Length (PL)
#    Se muestra la tabla de contingencia para la variable PL
#    con su respectiva frecuencia absoluta.
tabla_PL

# 3.- Se contruye la tabla de frecuencias completas redondeando 
#las frecuencias absolutas a 3 decimales
transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# 4.- Agruparemos las variables en 8 clases y se 
#   calcula la frecuencia absoluta

tabla_clases<-as.data.frame(table (Petal.length = factor
                              (cut(iris$Petal.Length,
                                   breaks = 8))))

# 5.- Visualizamos la tabla de clases
tabla_clases

# 6.- Contrucción de la tabla de frecuencias completa redondeando las frecuencias 
#     relativas a 3 decimales
tabla<-transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# 7.- Organización visual de la tabla (variable Petal.length)

# 7.1.- Instalamos la librería knitr
installa.packages("knirt")

# 7.2.- Se abre la librería
library(knitr)

# 7.3.- Se visualiza la tabla
kable(tabla)


#---------------------------------------------
#     Ejercicio
#---------------------------------------------

# 1.- Replica el script en RMarkdown
# 2.- Sube el archivo en .PDF a tu repositorio en Github