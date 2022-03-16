
# ___________ Modelo de Regresión lineal simple _______

#------------------------------------
#   Lectura de matriz de datos
#------------------------------------

# Exportar la matriz penguins.xlsx

#------------------------------------
#  Configuracion de matriz
#------------------------------------
#1.- Convertir las variables categóticas a factores
penguins$especie<-factor(penguins$especie, 
                         levels=c("Adelie", "Gentoo", "Chinstrap"))


penguins$isla<-factor(penguins$isla, 
                      levels=c("Torgersen", "Biscoe", "Dream"))


penguins$genero<-factor(penguins$genero, 
                        levels=c("male", "female"))

penguins$año<-factor(penguins$año, 
                     levels=c("2007", "2008", "2009"))

#------------------------------------
#   Selección de variables
#------------------------------------

# 1.- se seleccionaran los datos de la especie gentoo
# y se crea una nueva matriz llamada "gentoo"

# Seleccion de la especie Gentoo
penguins$especie
gentoo<-penguins[153:176,c(4,5,6,7)]

#--------------------------------
#   Grafico de dispersion
#--------------------------------
pairs(gentoo)

#-------------------------------------
# Calculo de la correlacion de Pearson
#-------------------------------------

cor(penguins1)

#--------------------------
#   grafico de dispersion con linea de regresion
#-----------------------------

MRL<-ggplot(gentoo, aes(x=masa_corporal_g, y=largo_pico_mm))+
  geom_point()+
  geom_smooth(method = "lm", formula=y~x, col="dodgerblue1")+
  ggtitle("Modelo de Regresión Lineal Simple")+
  xlab("Masa corporal (gr)")+
  ylab("Largo del pico (mm)")+
  theme_light()

# 2.- Visualizacion del objeto
MRL

#------------------------------------
#  Cálculo y representación de la recta
# por mínimos cuadrados
#-------------------------------------
regresion<-lm(gentoo$largo_pico_mm~gentoo$masa_corporal_g, 
              data=gentoo)

summary(regresion)


#-----------------------------------------------
#   Coeficiente de Correlacion de Pearson (r)
#-----------------------------------------------

sqrt(0.5456)


                            
