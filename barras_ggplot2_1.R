#GRAFICO DE BARRAS EN GGPLOT2

library(ggplot2)
# Cargamos los datos
data(mtcars)
attach(mtcars)
head(mtcars)
df=as.data.frame(mtcars)
head(df)
#Tabla de frecuencias
mi_tabla <- table(cyl)

mi_tabla

#Barras verticales
ggplot(data=df,aes(x=cyl))+
  geom_bar()
# barras horizontales
ggplot(data=df,aes(x=cyl))+
  geom_bar()+coord_flip()
