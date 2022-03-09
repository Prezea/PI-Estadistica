
#________ Tablas de frecuencia_______
# Utilizamos la matriz iris

#--------------------------------------
#   Exploraci�n de la matriz
#--------------------------------------

#1.- Exportaci�n de matriz
data(iris)

#2.- Exploraci�n de la matriz
# Tenemos 150 individuos y 5 variables
dim(iris)

#3.- Nombre de las columnas
colnames(iris)

#4.- Exporaci�n de especies
iris$Species

#5.- Tipos de variables
str(iris)

#6.- En busca de valores perdidos
anyNA(iris)

#----------------------------------
# Generaci�n de tablas NO AGRUPADAS
#-----------------------------------

#1.- Convertir la matriz de datos a un data frame, 
# se agrupan los valores para la variable Petal.Length 
# y se calcula la frecuencia absoluta.

tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

# 2.- Visualizaci�n de la tabla de contingencia de
# la variable Petal.length(PL) y su respectiva frecuencia
# absoluta
tabla_PL

# 3.- Crear la tabla completa
tabla1<-transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#-----------------------------------
#  Tablas agrupadas
#-----------------------------------
# Nota: Se debe tener previamente el c�lculo
# de la amplitud y Rango.

#1.- Agrupaci�n de la variable en clases (8 clases)
# 8 renglones.
tabla_clases<-as.data.frame(table(Petal.Length=factor(cut(iris$Petal.Length,
                               breaks=8))))
tabla_clases

# 2.- Construcci�n de tabla completa
tabla2<-transform(tabla_clases,
                  freqAc=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAc=round(cumsum(prop.table(Freq)),3))

tabla2