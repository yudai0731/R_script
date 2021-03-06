mu = 200
sigma2 = 5^2
n=10
Xbar = 196
alpha = 0.05
LR = 0
# left 0,both 1,right 2
Z = (Xbar - mu)/(sqrt(sigma2/n))
Z = round(Z,2)
print(Z)

flg = 0
if(LR ==0){
  CR = round(qnorm(alpha,mean=0,sd=1),4)
  print(CR)
  if(Z<=CR)
    flg=1
  
}else if(LR==1){
  LowAlpha = alpha/2
  HighAlpha = 1-LowAlpha
  LowCR = round(qnorm(LowAlpha,mean=0,sd=1),4)
  HighCR = round(qnorm(HighAlpha,mean=0,sd=1),4)
  print(LowCR)
  print(HighCR)
  if((Z<=LowCR)||(Z>=HighCR))
    flg=1
}else{
  CR = round(qnorm(1-alpha,mean=0,sd=1),4)
  print(CR)
  if(Z>=CR)
    flg=1
}

if(flg){
  print("H0 is rejected and H1 is accepted.")
}else{
  print("H0 is not rejected.")
}