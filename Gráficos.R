
# __________________ GRÁFICOS ____________________

# Vamos a utilizar la matriz de datos "penguins"

#-------------------------------------------------
#    Exportación de la matriz
#-------------------------------------------------

#     Import data/ from excel/ aceptar

#-------------------------------------------------
#   Exploración de la matriz
#-------------------------------------------------

# 1.- Dimensión de la matriz
dim(penguins)

# 2.- Nombre de las variables
colnames(penguins)

# 3.- Tipo de variables
str(penguins)

# 4.- En busca de datos perdidos
anyNA(penguins)

# 5.- Estadísticas descriptivas (para variables cuantitativas)
summary(penguins)

#-------------------------------------------------------------
#         Configuración de la matriz
#-------------------------------------------------------------

# 1.- Convertir las variables categóricas a factores

penguins$especie<-factor(penguins$especie,
                         levels= c("Adelie", "Gentoo", "Chinstrap"))

# 2.- Se convierte a factor la variable isla
penguins$isla<-factor(penguins$isla,
                      levels= c("Torgersen", "Biscoe", "Dream"))

# 3.- Se convierte a factor la variable genero
penguins$genero<-factor(penguins$genero,
                      levels= c("male", "female"))

# 4.- Se convierte a factor la variable genero
penguins$año<-factor(penguins$año,
                        levels= c("2007", "2008", "2009"))

# 5.- Se verifican que las variables se hayan codificado de forma correcta
str(penguins)

# 6.- Se realiza de nuevo las estadísticas descriptivas
summary(penguins)

# .- Creamos una nueva matriz de datos donde sólo se seleccionan
# las columnas de la 2 a la 9.
penguins1<-penguins[,2:9]

penguins1

#--------------------------------------------------
#        Librerías
#--------------------------------------------------

# Vamos a utilizar la librería ggplot2

# 1.- Descargamos la libraría del CRAN
install.packages("ggplot2")

# 2.- Abrimos la librería 
library(ggplot2)


# ------------------------------------------------
#         Boxplot
#--------------------------------------------------

# 1.- Creación de un vector de color
color=c("lightsalmon2","lightsteelblue1")

# 2.- Creación del gráfico

BX<-ggplot(penguins1, aes(x=genero, y=largo_pico_mm))+
  geom_boxplot(fill=color)+
  ggtitle("Boxplot")+
  xlab("Sexo")+
  ylab("largo de la aleta (mm)")+
  theme_bw()

# 3.- Visualización del boxplot
BX

#--------------------------------------------------
#            Gráfico de barras
#--------------------------------------------------

# 1.- Creación de un vector de color
color=c("darkseagreen", "lavenderblush3", "lemonchiffon1")

# 2.- Creación del gráfico
GB1<-ggplot(penguins1, aes(x=año))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Año")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico
GB1

# 4.- Se grega la capa de coord_flip para visualizar las barras
# horizontales

GB2<-ggplot(penguins1, aes(x=año))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Año")+
  ylab("Frecuencias")+
  coord_flip()+
  theme_minimal()

# 5.- Visualización del gráfico
GB2

#--------------------------------------------------
#           Histograma
#---------------------------------------------------

# 1.- Construcción del gráfico

HG<-ggplot(penguins1, aes(x=largo_aleta_mm))+
  geom_histogram(col="black", fill="paleturquoise")+
  ggtitle("Histograma")+
  xlab("Largo de la aleta (mm)")+
  ylab("Frecuencias")+
  theme_classic()

# 2.- Visualización del gráfico
HG

# 3.- Mejorar el gráfico usando el parámetro binwidth
HG1<-ggplot(penguins1, aes(x=largo_aleta_mm))+
  geom_histogram(col="black", fill="paleturquoise", binwidth = 1.1)+
  ggtitle("Histograma")+
  xlab("Largo de la aleta (mm)")+
  ylab("Frecuencias")+
  theme_classic()

# 4.- Visualización del gráfico
HG1


#-------------------------------------------------
#        Gráficos de dispersión
#-------------------------------------------------

# Para dos variables cualitativas y posiblemente dependientes

#1.- Construcción del gráfico
GD<-ggplot(penguins1, aes(x=largo_pico_mm, y=grosor_pico_mm))+
  geom_point(aes(color=especie))+
  ggtitle(" Gráfico de dispersión")+
  xlab("Largo del pico (mm)")+
  ylab("grosor del pico (mm)")+
  theme_light()

# 2.- Visualización de la variable
GD

#---------------------------------------------------
#       Organización de gráficos
#---------------------------------------------------

# 1.- Descargar el paquete del CRAN
install.packages("gridExtra")

#2.- Abrir la librería
library(gridExtra)

# 3.- Organización de 2 gráficos en dos columnas y una fila
grid.arrange(BX, GB1, nrow=1, ncol=2)

# 4.- Organización de 3 gráficos en dos columas y dos filas
grid.arrange(BX, GB1, HG, nrow=2, ncol=2)

# 5.- Organización de 4 gráficos en dos columas y dos filas
grid.arrange(BX, GB1, HG, GD, nrow=2, ncol=2)

# Mejorar el histograma para la organización de los gráficos
HG2<-ggplot(penguins1, aes(x=largo_aleta_mm))+
  geom_histogram(col="black", fill="paleturquoise", binwidth = 0.8)+
  ggtitle("Histograma")+
  xlab("Largo de la aleta (mm)")+
  ylab("Frecuencias")+
  theme_classic()

# 6.- Visualización del gráfico
HG2

# 7.- copiar y pegar el paso 5, agregando el histograma mejorado
grid.arrange(BX, GB1, HG2, GD, nrow=2, ncol=2)
