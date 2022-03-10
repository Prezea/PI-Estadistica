
#_________________ COEFICIENTE DE CORRELACIÃ“N ___________

# Para datos con distribucion normal
# Area: Estadistica Parametrica
# Utilizamos la matriz "penguins.xlsx"

#---------------------------------------------------------
#     Coeficiente de correlacion de Pearson
#---------------------------------------------------------

#1.- Seleccionamos las variables que vayamos a correlacionar
str(penguins)
penguins$especie

# 2.- Se seleccionan las filas 1 a la 61 que corresponden a la 
# especie Adeli y las variables cuantitativas.
adeli<-penguins[1:61,3:6]

# 3.- VisualizaciÃ³n de la matriz
View(adeli)


#4.- Generacion del grafico de correlacion
plot(adeli)

# 5.- Calculo de la correlacion de pearson
cor(adeli)

# 6.- Organizacion visual de la tabla de correlaciones
#6.1.- Se genera un nuevo objeto con el nombre de pearson
pearson<-cor(adeli)

#6.2.- Se abre la libreria knitr
library(knitr)

#6.3.- Se utiliza la funcion kable
kable(pearson)


#--------------------------------------------------
#      Correlacion de Spearman
#--------------------------------------------------

# Para datos con distribucion NO Normal
# Area: Estadistica NO Parametrica
# Se utiliza la matriz marvel_dc.csv

# 1.- Identificar las variables cuantitativas
str(marvel_dc)

# 2.- Nombre y posición de la variable
colnames(marvel_dc)

# 3.- Seleccionar las variables:
# rate, minutos, budget y gross.worldwide
marvel<-marvel_dc[,c(4,6,8,11)]

# 4.- Verificar que el nombre de las variables 
# esten correctas
colnames(marvel)

# 5.- Realizar un plot de exploracion
plot(marvel)

# 6.- Realizar la correlación de spearman
spearman<-cor(marvel, method = "spearman")

# 6.1.- Visualizar el objeto
spearman


#7.- Se utiliza la funcion kable para tabla en 
# formato markdown.
kable(spearman)

