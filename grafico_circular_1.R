Freq = c(86, 182, 83, 10)
#To label categories
Process = c('Initial cutoff', 'Turning', 'Drilling', 'Assembly')
#To calculate percentages
Percents = round(Freq/sum(Freq)*100,1)
label = paste(Percents, '%', sep='') # add % to labels
#Pie Chart with percentages
pie(Freq, labels = label, col=c(2,3,4,5), main='Pie Chart of Process Steps')
#To add a legend. Note: “pch” specifies various point shapes.
legend('topleft', Process, col=c(2,3,4,5), pch=15)



# EJEMPLO 2

# Vamos a crear dos variables para la representación
animales <- c('perro', 'gato','tortuga','pájaro') 
numero <- c(10,5,3,8)
barplot(height=numero,names=animales,col=rainbow(4))
