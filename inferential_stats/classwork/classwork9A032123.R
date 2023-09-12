x1=154
n1=438
phat1=x1/n1
x2=132
n2=389
phat2=x2/n2
phat1
phat2
samplediff=phat1-phat2
p_pool=(x1+x2)/(n1+n2)
p_pool
#sd = se
se = sqrt(p_pool*(1-p_pool)/n1 +
            p_pool*(1-p_pool)/n2
          )
se
pnorm(-samplediff,0,se)
pnorm(samplediff,0,se,lower.tail=F)
#x=counts
#n=sample size
#alternative = sign of alternative hypothesis
prop.test(x=c(x1,x2),n=c(n1,n2),alternative="two.sided")


#**********************#

#class ex

x1=round(0.080*11545,digits=3)
x2=0.088*4691
n1=11545
n2=4691
prop.test(x=c(x1,x2),n=c(n1,n2),alternative="two.sided")
