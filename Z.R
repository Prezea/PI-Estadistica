
#________________ PUNTUACIONES Z __________

# 1.- Generaci�n de n�meros aleatorios
datos<-sample(1:15, 14, replace=TRUE)

#2.- C�lculo de la media
media<-mean(datos)
media
sd(datos)

#2.- C�lculo de las puntuaciones z
z<-((datos-media)/sd(datos))
z

#------------------------------
#   Ejercicios
#------------------------------

# 1.- Genera 20 n�meros aleatorios, calcula las
# puntuaciones z. Interpreta las 
# primeras 5 puntuaciones.

# 2.- Genera 30 n�meros aleatorios, calcula las
# puntuaciones z. Interpreta las 
# primeras 10 puntuaciones.

# 3.- Realiza 2 ejercicios de forma libre.



