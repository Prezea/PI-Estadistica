
#________________ PUNTUACIONES Z __________

# 1.- Generación de números aleatorios
datos<-sample(1:15, 14, replace=TRUE)

#2.- Cálculo de la media
media<-mean(datos)
media
sd(datos)

#2.- Cálculo de las puntuaciones z
z<-((datos-media)/sd(datos))
z

#------------------------------
#   Ejercicios
#------------------------------

# 1.- Genera 20 números aleatorios, calcula las
# puntuaciones z. Interpreta las 
# primeras 5 puntuaciones.

# 2.- Genera 30 números aleatorios, calcula las
# puntuaciones z. Interpreta las 
# primeras 10 puntuaciones.

# 3.- Realiza 2 ejercicios de forma libre.



