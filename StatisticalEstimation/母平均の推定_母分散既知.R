# Setting
sigma2 <- 14.6^2 # Population variance
n <- 10 # Degree of freedom
Xbar <- 52.5 # Sample mean
ci <- 0.95 # Confidence interval

# Calculation
LowAlpha <- (1-ci)/2 
UpAlpha <-ci+LowAlpha
LowZ <- round(qnorm(LowAlpha,mean=0,sd=1),3)
UpZ <- round(qnorm(UpAlpha,mean=0,sd=1),3)
LowCi <- Xbar - LowZ*(sqrt(sigma2/n))
UpCi <- Xbar - UpZ*(sqrt(sigma2/n))
print(LowCi) # 下側信頼限界
print(UpCi) # 上側信頼限界