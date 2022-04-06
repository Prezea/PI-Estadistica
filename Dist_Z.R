
#______________ DISTRIBUCIÓN Z ______________

#--------------------------------
#       Ejemplo 1
#--------------------------------

# Las calificaciones de ingreso a la BENV 
# se ajustan a una distribución Normal, 
# donde la media de la prueba es 72 y 
# la desviacion estándar es 15.2. 
# ¿Cual es el porcentaje de estudiantes 
# con un puntaje mayor a 84 en el examen?
  
x<-pnorm(84, mean=72, sd=15.2, lower.tail = FALSE)
x*100

#---------------------------------
#    Ejemplo 2
#---------------------------------

# 1.- Generar las calificaciones de Ciencias
# 27: número de alumnas/os
x<-sample(5:10, 27, replace=TRUE)
x

# 2.- Calcular la media
mean(x)

# 3.- Calcular la desviacion estandar
sd(x)

# 4.- Realizar el calculo de la distribucion Normal
# Se quiere saber el porcentaje de alumnas/os que
# tienen una calificacion mayor a 8.

x1<-pnorm(8, mean=7.5, sd=1.71, lower.tail = FALSE)
x1*100

#-------------------------------
#  Práctica
#-------------------------------

# 1.- Realiza un ejercicio parecido al ejemplo 1

# 2.- Simula las calificaciones de dos asignaturas
# y calcula la distribucion normal. 

# Nota: No olvides plantear el problemas en cada uno
# de los ejercicios.