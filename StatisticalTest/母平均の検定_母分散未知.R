mu = 160
u2 = 3.5^2
n=10
Xbar = 158.1
alpha = 0.05
LR = 0
# left 0,both 1,right 2
T = (Xbar - mu)/(sqrt(u2/n))
T = round(T,2)
print(T)

flg = 0
if(LR ==0){
  CR = round(qt(alpha,df=n-1),4)
  print(CR)
  if(T<=CR)
    flg=1
  
}else if(LR==1){
  LowAlpha = alpha/2
  HighAlpha = 1-LowAlpha
  LowCR = round(qt(LowAlpha,df=n-1),4)
  HighCR = round(qt(HighAlpha,df=n-1),4)
  print(LowCR)
  print(HighCR)
  if((T<=LowCR)||(T>=HighCR))
    flg=1
}else{
  CR = round(qt(1-alpha,df=n-1),4)
  print(CR)
  if(T>=CR)
    flg=1
}

if(flg){
  print("H0 is rejected and H1 is accepted.")
}else{
  print("H0 is not rejected.")
}