#####################################################
#MASTER EN ANAISIS AVANZADO DE DATOS MULTIVARIANTES.
#MARIA CORTES Y MERCEDES SANCHEZ
#FEBRERO 2020
######################################################


install.packages("xlsReadWrite")

rawdata<-read.csv("COLORES.csv",sep = ";", quote="\"", dec=",")
# To read the data file with extension xls:
library(xlsReadWrite)
rawdata<-read.xls("colores.xls",sheet="CRL")


#To visualize the raw data
rawdata
#or for large datasets
head(rawdata)

#se elimina la columna 1
data<-colores[,-1]
rownames(colores)


a<-prcomp(data,center=TRUE,scale=FALSE)
b<-summary(a);b
plot(a$x[,1:2], main="PCA",
     xlab=paste(" Dim 1  (", (round(100*b$importance[2,1],digits=1)), " % )"),
     ylab=paste(" Dim 2  (", (round(100*b$importance[2,2],digits=1)), " % )"),
     type="n", pch=19)
text(a$x[,1:2],lab=rownames(colores))
abline(h=0,lty=2); abline(v=0,lty=2)

#Construction of a biplot using the function "biplot"
#The form biplot
biplot(a,choices=1:2, pch=15, cex=0.8,cex.axis=0.7,arrow.len = 0.05,
       xlab=paste(" Dim 1  (", (round(100*b$importance[2,1],digits=1)), " % )"),
       ylab=paste(" Dim 2  (", (round(100*b$importance[2,2],digits=1)), " % )"),
       var.axes=TRUE,scale=0)

#The covariance biplot
biplot(a,choices=1:2, pch=15, cex=0.8,cex.axis=0.7,arrow.len = 0.05,
       xlab=paste(" Dim 1  (", (round(100*b$importance[2,1],digits=1)), " % )"),
       ylab=paste(" Dim 2  (", (round(100*b$importance[2,2],digits=1)), " % )"),
       var.axes=TRUE,scale=1)