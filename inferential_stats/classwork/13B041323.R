#class exercise

mat=rbind(
  c(35,19,35,29,21),
  c(193,132,117,119,131),
  c(64,51,51,32,58))
tabb=as.table(mat)

dimnames(tabb)=list(
  sleep=c('depr','stan','more'),
  prof=c('control','pilot','trucker','conductor','driver'))

test=chisq.test(tabb)
test
test$residuals # obs-exp / sqrt(exp)

#-----------------

obs=c(29,23,12,14,8,20)
pvec=c(0.20,0.20,0.10,0.10,0.10,0.30)
test=chisq.test(x=obs,p=pvec)
test$residuals

#-----------------

expe=c(71/126,30/126,25/126)
obs=c(71,30,25)
pred=c(0.6,0.25,0.15)
test=chisq.test(x=obs,p=pred) #pval=0.9908??
test$residuals
test$expected
