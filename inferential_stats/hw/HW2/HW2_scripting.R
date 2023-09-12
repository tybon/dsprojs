(1*(0.16)+2*(0.33)+3*(0.26)+4*(0.16)+5*(0.03))/6

Reds=0:5
probs=c(0.06,0.16,0.33,0.26,0.16,0.03)

tibble(Reds,probs)

expVa = (sum(Reds*probs))
expVa

vari = sum(((Reds-expVa)^2)*probs)
vari

stdev = sqrt(vari)
stdev

Defects=0:3
probs = c(0.38,0.21,0.11,0.07)

tibble(Defects,probs)

expVa = (sum(Defects*probs))
expVa

vari = sum(((Defects-expVa)^2)*probs)
vari

stdev = sqrt(vari)
stdev

questions = 1:5
probs = rep(1/4,5)

dgeom(4,probs[5])
0.75^4*0.25

0.25^5
