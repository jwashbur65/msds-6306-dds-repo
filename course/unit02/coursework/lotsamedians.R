# function to create nsim number of random samples of size n
# and then calculate the mean of 1,000 random samples from 
# exponential distributions of size 10
lotsamedians=function(n=10, nsim=1000){
  lotsa.medians=numeric(nsim)
  for (i in 1:nsim) {
    x=rnorm(n)
    lotsa.medians[i]=median(x)
    dexp(lotsa.medians[i])
  }
  lotsa.medians
}