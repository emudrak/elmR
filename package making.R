install.packages("devtools")
library("devtools")
install.packages("roxygen")
library(roxygen2)
create("elmR")


getwd()
setwd("./elmR")
document()


setwd('..')
install("elmR")
?logit.transform
