install.packages("zoo")
install.packages("nardl")
install.packages("dLagM")
install.packages('stargazer')

library(tidyverse)
library(haven)
library(stargazer)
library(zoo)
library(nardl)
library(dLagM)

options(max.print = 10000)


removed = list('ENER' = c(3,4,5,6,7,8), 'MTLS' = c(3,4,5,6,7),'FOPR' = c(3,4,5,6)
            ,'AGRI' = c(2,3,4,5,6,7),  'IPPI' = c(3,4,5,6,7), 'ENER' = c(3,4,5,6,7,8), 'FISH' = c(4,5,6,7,8))

          
model.df = dlm(formula =  CPI ~ ENER + MTLS + FOPR + AGRI + FISH + IPPI,
                data = df, q = 8, remove = removed)


summary(model.df)










