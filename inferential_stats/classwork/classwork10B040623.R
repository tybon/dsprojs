## ----------------
library(tidyverse)
library(skimr)
#setwd("C:\\Users\\epicm\\Documents\\School\\20222023\\ISWR\\data")
ds=read_csv("../data/textbooks.csv")
skim(ds)
t.test(ds$diff,mu=0,alternative="two.sided")
t.test(ds$ucla_new,ds$amaz_new,paired=T,alternative="less")

#baseball example
t.test(ds$diff,mu=0,alternative="greater")

#* issues with these conclusions
#* - sample size
#* - representation is shaky
#* - prior experience, skill, training duration?
#* - pre v. post where even little variation 
#* in performance affects conclusion of the study
#* 