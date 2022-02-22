
#_____________________ MEDIDAS ___________________

# Se trabajará con la matriz de datos "penguins.xlsx"


#-----------------------------------------------
#      Tendencia central
#-----------------------------------------------

# 1.- Media y mediana
summary(penguins)


# 2.- Moda

# 2.1.- Se descarga el paquete "modeest"
install.packages("modeest")

# 2.2.- Se abre la librería
library(modeest)

# 2.3.- Cálculo de la moda para la variable isla y largo del pico
mfv(penguins$isla)
mfv(penguins$largo_pico_mm)

#-----------------------------------------------
#      Medidas de dispersión
#-----------------------------------------------

# 1.- Cálculo de la varianza (sólo para variables cuantitativas)
var(penguins$grosor_pico_mm)

# 2.- Cálculo de la desviación estándar
sd(penguins$grosor_pico_mm)


#-----------------------------------------------
#    Medidas de posición
#------------------------------------------------

# 1.- Cuartiles
summary(penguins)

# 2.- Quintil
quintil<-quantile(penguins[["largo_aleta_mm"]], p=c(.20, .40, .60, .80))
quintil

# 3.- Decil
decil<-quantile(penguins[["largo_aleta_mm"]], p=c(.10, .20, .30, .40, .50, .60,
                                                  .70, .80, .90))
decil

# Percentil
percentil<-quantile(penguins[["largo_aleta_mm"]], p=c(.33, .66, .99))
percentil
