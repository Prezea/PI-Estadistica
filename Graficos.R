
# ______________Gr�ficos____________
#  Matriz penguins, se encuentra en classroom

#--------------------------------------------
# Importaci�n de matriz 
#-------------------------------------------

# import data / from excel /browse / seleccionar archivo / aceptar

#--------------------------------------
#    Exploraci�n
#-----------------------------------

dim(penguins)

# Nombre de las variables
colnames(penguins)

# Tipo de variables
str(penguins)


# En busca de valores perdidos (NA's)
anyNA(penguins)

# Estad�stica descriptiva
summary(penguins)

#-----------------------------------------
# Configuraci�n de la matriz
#------------------------------------------

#1.- Convertir las variables categ�ticas a factores
penguins$especie<-factor(penguins$especie, 
                         levels=c("Adelie", "Gentoo", "Chinstrap"))


penguins$isla<-factor(penguins$isla, 
                         levels=c("Torgersen", "Biscoe", "Dream"))


penguins$genero<-factor(penguins$genero, 
                         levels=c("male", "female"))

penguins$a�o<-factor(penguins$a�o, 
                         levels=c("2007", "2008", "2009"))

str(penguins)

summary(penguins)

View(penguins)

# ---Este paso no es necesario.---
# 2.- Creamos una nueva matriz de datos donde se seleccionan
# las columnas de la 2 a la 9.
penguins1<-penguins[,2:9]


#---------------------------------
#   Librer�as
#----------------------------------
install.packages("ggplot2")

library(ggplot2)

# ------------------------------------------------
#         Boxplot
#--------------------------------------------------

# 1.- Creaci�n de un vector de color
color=c("lightsalmon2","lightsteelblue1")

# 2.- Creacion del grafico

BX<-ggplot(penguins, aes(x=genero, y=largo_pico_mm))+
  geom_boxplot(fill=color)+
  ggtitle("Boxplot")+
  xlab("G�nero")+
  ylab("largo de la aleta (mm)")+
  theme_bw()

# 3.- Visualizaci�n del boxplot
BX

#--------------------------------------------------
#            Gr�fico de barras
#--------------------------------------------------

# 1.- Creaci�n de un vector de color
color=c("darkseagreen", "lavenderblush3", "lemonchiffon1")

# 2.- Creaci�n del gr�fico
GB1<-ggplot(penguins, aes(x=a�o))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gr�fico de Barras")+
  xlab("A�o")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB1

# 4.- Barras verticales

GB2<-ggplot(penguins, aes(x=a�o))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gr�fico de Barras")+
  xlab("A�o")+
  ylab("Frecuencias")+
  coord_flip()+
  theme_minimal()

# 5. Visualizacion del objeto
GB2

#--------------------------------------------------
#           Histograma
#---------------------------------------------------

# 1.- Construccion del grafico

HG<-ggplot(penguins, aes(x=largo_aleta_mm))+
  geom_histogram(col="black", fill="paleturquoise")+
  ggtitle("Histograma")+
  xlab("Largo de la aleta (mm)")+
  ylab("Frecuencias")+
  theme_classic()

# 2.- Visualizacion del grafico
HG

#----------------------------------
#   Grafico de dispersion
#-----------------------------------

# 1.- Construccion del grafico

GD<-ggplot(penguins, aes(x=largo_pico_mm, y=grosor_pico_mm))+
  geom_point(aes(color=especie))+
  ggtitle("Gr�fico de dispersi�n")+
  xlab("largo del pico (mm)")+
  ylab("grosor del pico (mm)")+
  theme_light()

# 2.- Visualizacion del objeto
GD

#-------------------------------
#  Organizacion de graficos
#-------------------------------

# 1.- Descargar el paquete gridExtra

install.packages("gridExtra")

# 2.- Abrir la libreria
library(gridExtra)

# 3.- Organizacion 2 graficos en una fila y dos columnas 
grid.arrange(BX,GB1, nrow=1, ncol=2)

# 4.- Organizacion 3 graficos en dos filas y dos columnas 
grid.arrange(BX,GB1,HG, nrow=2, ncol=2)

# 5.- Organizacion 4 graficos en dos filas y dos columnas 
grid.arrange(BX,GB1,HG,GD, nrow=2, ncol=2)
