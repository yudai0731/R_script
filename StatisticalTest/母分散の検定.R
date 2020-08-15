sigma2 = 2
u2 = 8.267
n=8
alpha = 0.05
LR = 1
# left 0,both 1,right 2
X = (n-1)*u2/sigma2
X = round(X,3)
print(X)

flg = 0
if(LR ==0){
  CR = round(qchisq(df=n-1,alpha),5)
  print(CR)
  if(X<=CR)
    flg=1
  
}else if(LR==1){
  LowAlpha = alpha/2
  HighAlpha = 1-LowAlpha
  LowCR = round(qchisq(df=n-1,LowAlpha),5)
  HighCR = round(qchisq(df=n-1,HighAlpha),5)
  print(LowCR)
  print(HighCR)
  if((X<=LowCR)||(X>=HighCR))
    flg=1
}else{
  CR = round(qchisq(df=n-1,1-alpha),5)
  print(CR)
  if(X>=CR)
    flg=1
}

if(flg){
  print("H0 is rejected and H1 is accepted.")
}else{
  print("H0 is not rejected.")
}