# Setting
u2 <- 219.41 # Unbiased variance
n <- 10 # Sample size
Xbar <- 52.5 # Sample mean
ci <- 0.95 # Confidence interval

# Calculation
LowAlpha <- (1-ci)/2 
UpAlpha <-ci+LowAlpha
LowT <- round(qt(LowAlpha,df=n-1),3)
UpT <- round(qt(UpAlpha,df=n-1),3)
LowCi <- Xbar + LowT*(sqrt(u2/n))
UpCi <- Xbar + UpT*(sqrt(u2/n))
print(LowCi) # 下側信頼限界
print(UpCi) # 上側信頼限界