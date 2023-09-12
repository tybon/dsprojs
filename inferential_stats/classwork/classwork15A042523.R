library(tidyverse)
library(skimr)
library(car)

setwd("C:\\Users\\epicm\\Documents\\School\\20222023\\ISWR\\data")
bs=read_tsv("house_prices_tab.txt")

bs %>%
  ggplot(aes(x=sqft_living,y=price)) +
  geom_point(aes(color=purple)) +
  geom_smooth(method="lm") + #shows a violation of EqualVariance
  theme_minimal()

mod=lm(price~sqft_living, data=bs)
summary(mod)
plot(mod)

#*We learn from all of this that our model is garbage
#*spread increases
#*what if we took the log of price and modeled as a function of sqftliving

#"different from zero" Qanswer: p value showing significance
# of difference from being a non-zero slope (Null hypoth)




#first plot
bs %>% 
  ggplot(aes(x=sqft_living,y=price,color=condition)) +
  geom_point()
#second plot
bs %>% 
  ggplot(aes(x=sqft_living,y=price,color=condition)) +
  geom_point()+
  scale_x_continuous(trans="log")
#third plot
bs %>% 
  ggplot(aes(x=sqft_living,y=price,color=factor(condition))) +
  geom_point(alpha=0.3)+
  scale_x_continuous(trans="log")+
  scale_y_continuous(trans="log")+
  theme_minimal()
#fourth plot
bs %>% 
  ggplot(aes(x=sqft_living,y=price,color=factor(condition))) +
  geom_point(alpha=0.3)+
  scale_x_continuous(trans="log")+
  scale_y_continuous(trans="log")+
  geom_smooth(method="lm")+
  theme_minimal()
bs%>%mutate(condition=factor(condition))

mod2=lm(log(price ~ ( log(sqft_living + condition) )+ #(this part is unnecessary)
              log(sqft_living)*condition, data=ds))
