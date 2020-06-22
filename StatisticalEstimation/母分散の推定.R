# Setting
u2 <- 3.491 # Unbiased variance
n <- 10 # Sample size
ci <- 0.99 # Confidence interval

# Calculation
LowAlpha <- (1-ci)/2 
UpAlpha <-ci+LowAlpha
LowT <- round(qchisq(df=n-1,UpAlpha),3)
UpT <- round(qchisq(df=n-1,LowAlpha),3)

LowCi <- ((n-1)*u2)/LowT 
UpCi <- ((n-1)*u2)/UpT 
print(LowCi) # 下側信頼限界
print(UpCi) # 上側信頼限界