## Class exercise

getwd()
#setwd("C:\\Users\\epicm\\Documents\\School\\20222023\\ISWR\\slides\\14 - Regression")

library(tidyverse)
library(skimr)

ds = read_table("../data/Hand_dexterity.txt")
names(ds)
skim(ds)
head(ds)

ds %>%
  filter(Dominant==1 %>%
           ggplot(aes(x=Age(yr),y=Speed,color=purple)))