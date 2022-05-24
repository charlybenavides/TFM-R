install.packages("Rcpp", repos="https://rcppcore.github.io/drat")
install.packages('readxl')
library(readxl)
file.choose()
ruta_excel <- "C:\\Users\\STUDENT\\Downloads\\ESTUDIANTES.xlsx"
datos <- read_excel(ruta_excel)

#regresión lineal

reg = lm(Perdidas ~ 0 + Preciovivienda + G + GENERO + Edad, datos)
plot(datos$Preciovivienda, datos$Perdidas, xlab='Localidad', ylab='Perdida')
abline(reg)
summary(reg)


prediccion = predict(reg, type="response")
summary(prediccion)




# probit

PROBIT = glm(Perdidas ~ 0 + Preciovivienda + G + GENERO + Edad, datos, family = binomial(link=probit))
summary(PROBIT)


#PREDICCION PROBIT 
predict_probit = predict(PROBIT,type="response")
summary(predict_probit)








