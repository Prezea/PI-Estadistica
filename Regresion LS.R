
#--------------------------------------------
#            Regresión lineal simple
#--------------------------------------------

# Técnica estadistica para crear modelos de variables
# continuas con ayuda de una función predictora. Nos ayuda a
#predecir y comprender el comportamiento de sistemas complejos,
#mediante la generacion de modelos matematicos.

#  Se parte de la ecuación:
#                 Y = beta0 + beta1(X1)+e

# donde: 
#    Y = es la variable dependiente o variable respuesta
#    beta0 = es la intersección o término constante
#    beta1 = son los parámetros del modelo
#    X1 = es la variable explicativa o independiente
#    e = error estandar del residual

#--------------------------------------------
#         Librerias
#---------------------------------------------
library(graphics)
library(ggplot2)

#---------------------------------------------
#        Lectura de matriz de datos
#---------------------------------------------

# 1.- Lectura de los datos
BD<-penguins1

BD$Especies
# 2.- seleccionar la seccion de la especie Adelie y de la
#columna 4 a la 7.
adelie<-BD[1:152,5:8]
adelie

#---------------------------------------------
#   GENERACION DEL GRÁFICO DE DISPERSION
#---------------------------------------------
pairs(adelie)

#---------------------------------------------
#  CALCULO DE CORRELACION DE PEARSON
#---------------------------------------------
cor(adelie)


#---------------------------------------------
#  CALCULO Y REPRESENTACION DE LA 
#        RECTA DE MÍNIMOS CUADRADOS
#-----------------------------------------------
# 1.- Se genera el cálculo de la recta cn las varaibles que tienen
# mayor correlación.
regresion<-lm(adelie$masa_corporal_g~adelie$grosor_pico_mm, data=adelie)

#2.- Se visualiza el resultado de los cálculos.
summary(regresion)

# 3.- Interpretacion del modelo
# Los parametro de la ecuación de la recta de minimos cuadrados que relaciona la 
# la masa corporal y el ancho del pico se localizan en la columna "ESTIMATE". para esto
# el estimador beta0 es de -281.86, beta1 es de 217.09 y el error standar del residual es 374.8
#Por lo tanto, la ecuación del modelo quedaría del siguiente modo:
#           
#                     Y = -281.86 + 217.09x + 374.8
#
#        Visto de otro modo: 
#
#             Ancho del pico = -281.86 + 217.09(masa_corporal) + 374.8
#
# Sin embargo, R^2 (multiple R-squared) es de 0.3318, 
#  lo que significa que NO se trata de un buen modelo.

#------------------------------------------------
#  GENERACION DEL GRÁFICO CON LA LINEA DE REGRESION
#-------------------------------------------------

ggplot(adelie, aes(x=masa_corporal_g, y=grosor_pico_mm))+
  geom_point()+
  geom_smooth(method = "lm", formula=y~x, se=FALSE, col="dodgerblue1")+
  theme_light()
