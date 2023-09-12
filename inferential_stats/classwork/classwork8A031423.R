#Class exercise:

n = 801
Sprop = 0.38*n #% of black americans unable to afford medcare
Hprop = 0.28 #% of americans unable to afford medcare
pval = 1-pnorm(Sprop,Hprop,sqrt(Hprop*(1-Hprop)/n))
pval
zscore = sqrt(Hprop*(1-Hprop)/n)
zscore
