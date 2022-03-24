
#______________ Tipos de variables ___________


install.packages("datos")
library(datos)

aero<-datos::aerolineas
dim(aero)  

str(aero)

aero$aerolinea
aero$nombre

#---------------------------------
# grafico de barras
#-------------------------------------

# 2.- Creación del gráfico
GB1<-ggplot(aero, aes(x=nombre))+
  geom_bar()+
  ggtitle("Gráfico de Barras")+
  xlab("Aerolineas")+
  ylab("Frecuencias")+
  theme_minimal()

GB1

#------------------------------
#   Penguins
#------------------------------

penguins<-datos::pinguinos

dim(penguins)
anyNA(penguins)

str(penguins)

penguins$isla

# integer=int

# los tipos de variables.

#----------------
# Ejercicio 1
#----------------
# van a seleccionar 2 matrices de datos (las que quieran)
# y van a describir los tipos de variables.
#  dim() y str().

#1.- Seleccionas tu matriz de datos.
atm<-datos::atmosfera

dim(atm)
str(atm)

# desde aquí empiezas a hacer tu descripción de variables

  