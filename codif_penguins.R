
# _________________ CODIFICACIÓN PENGUINS ____________________

# 1.- Exportación de la matriz
#  Import data/ from excel / elegir browser / open / Import

# 2.- Conversión a factores de las variables cualitativas

penguins$especie<-factor(penguins$especie,
                         levels= c("Adelie", "Gentoo", "Chinstrap"))

penguins$isla<-factor(penguins$isla,
                      levels= c("Torgersen", "Biscoe", "Dream"))

penguins$genero<-factor(penguins$genero,
                        levels= c("male", "female"))

penguins$año<-factor(penguins$año,
                     levels= c("2007", "2008", "2009"))

# 3.- e realiza un summary para verificar la configuración de las variables cualitativas
summary(penguins)

# 4.- Se guarda la matriz de datos con extención .csv
write.csv(penguins, "penguins1.csv")

# 5.- Visualización de la matriz penguins1.csv
#  Import data/ from text / elegir browser / open / Import
