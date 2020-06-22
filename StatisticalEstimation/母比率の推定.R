# Setting
n <- 1000 # Degree of freedom
real_number <- 35
ci <- 0.95 # Confidence interval

# Calculation
pHat <- real_number/n
LowAlpha <- (1-ci)/2 
UpAlpha <-ci+LowAlpha
LowZ <- round(qnorm(LowAlpha,mean=0,sd=1),3)
UpZ <- round(qnorm(UpAlpha,mean=0,sd=1),3)
LowCi <- pHat + LowZ*(sqrt((pHat*(1-pHat))/n))
UpCi <- pHat + UpZ*(sqrt((pHat*(1-pHat))/n))
print(LowCi) # 下側信頼限界
print(UpCi) # 上側信頼限界