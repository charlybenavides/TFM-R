
install.packages('rpart')
library(rpart)
install.packages('rattle')
library(rattle)
install.packages('rpart.plot')
library(rpart.plot)

datos <- read.csv('https://docs.google.com/spreadsheets/d/e/2PACX-1vTNO98csbc4O6P1k5WExAAZE8vQjPG1MNsFadTMsU7iZBy1acx8pJpbl6A-V8b6YEuFf3_p0u-ry8LR/pub?output=csv')





arbols = rpart(data = datos,
               formula = Perdidas ~ GENERO + Edad,
               
               control = rpart.control(
                 cp=0.01,
                 minbucket = 30,
                 minsplit = 20
               )
)

arbols

fancyRpartPlot(arbols)
asRules(arbols)
