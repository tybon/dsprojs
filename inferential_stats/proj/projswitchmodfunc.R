changeFactorToRandom = function(freqvec) {
  newvec = vector("integer",length(freqvec))
  
  
  
  
  
  
  #for(i in length(freqvec)) {  
  #newvec[i] = switch(freqvec[el],
  #             "A"=runif(1,1,5),
  #             "B"=runif(1,6,11),
  #             "C"=runif(1,12,20),
  #             "D"=20,
  #             "E"=0)
  #}
}

#> data.frame(replicate(length(vec),runif(1,1,5)%/%1))
#replicate.length.vec...runif.1..1..5....1.
#1                                          1
#2                                          4
#3                                          2
#4                                          1
#5                                          3

#data$char[data$char == "b"] <- "XXX"          # Replace b by XXX
#data                                          # Print updated data
  #   num1 num2 char fac
  # 1   99    3    a gr1
  # 2    2    4  XXX gr2
  # 3    3    5    c gr1
  # 4    4    6    d gr3
  # 5    5    7    e gr2

colA= c("A","B","C","B","C")
colB= c("B","B","A","A","D")
colC= c("A","C","C","B","B")

df = data.frame(colA,colB,colC)

df$colA
df$colA[0]
df$colA[1]
df$colA[df$colB=="A"] = runif(1,1,5)
df$colA

