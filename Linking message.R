print("this file was made in RStudio")
print("now it lives in GitHub")
# x<-1
# print(x)
# x
# msg <- "hello"
# x <-5
# x # auto-printing
# print(x) # explicit printing
# x<-1:20
# x
## Data Types/ Objects
# 5 basic data types: numeric, integer, character, complex, Logical
# x<- 1
# x<- 1L
# class(x)
# Inf # NaN
# Attributes:
#names, dimensions
#class, length
# attributes() fn

## vectors & Lists
#  x<-c(.5,.6)
#  x<-c(T,F)
# vector("numeric", length = 10 )
# y<- c(1.7,"a")
# y<- c(TRUE,2)
# y<- c("a",T)
# x<- 0:6
# x<- c(0,1,2,3,4,5,6)
# class(X)
# as.numeric(x)
# as.logical(x)
# as.character(x)
# # x<-c("a","b","c")
# #as.numeric(x) # doesn't make sense will return NA
# 
# x<-list(1,"a",T, 1+4i)

# matrices are vectors that have a dimension attribute
# m <- matrix(nrow=2,ncol=3)
# m
# dim(m)
# attributes(m)
# 
# m <-matrix(1:6, nrow=2, ncol=3)
# m
# 
# m<-1:10
# m
# #dim(m)<- c(2,5)
# m
# 
# x<-1:3
# y<-10:12
# cbind(x,y)
# rbind(x,y)


#if(x>3){
#  y<-10
#} else{
#  y<-0
#}
#y

#x<- c("a","b","c","d")
#for(i in 1:4){
#  print(x[i])
#}
#for(i in seq_along(x)){
#  print(x[i])
#}

#for(letter in x){
#  print(letter)
#}
#for(i in 1:4) print(x[i])
#x<- matrix(1:6,2,3)
#for(i in seq_len(nrow(x))){
#  for(j in seq_len(ncol(x))){
#    print(x[i,j])
#  }
#}

#count<-0
#while(count<10){
#  print(count)
#  count<-count+1
#}

#z<-5
#while(z>=3 && z<=10){
#  print(z)
#  coin<-rbinom(1,1,.5)
  
#  if(coin ==1){
#    z<-z+1
#  } else{
#    z<-z-1
#  }
#}
## repeat,Next,Break
#x0<-1
#tol<-1e-8
#repeat{
#  x1<- #computeEstimate
  
#  if(abs(x1-x0)<tol){
#    break
#  }else{
#    x0<-x1
#  }
#}

#for (i in 1:100){
#  if(i<=20){
    # skip the first 20 iterations
#    next
#  }
  # Do something here
#}
### Functions
# add2<- function(x,y){
#   x+y
# }
# add2(3,5)
#above10 <- function(x){
#  use<-x>10
#  x[use]
#x[x>10]
#}
#above10(20)
#above<- function(x,n=10){
#  x[x>n]
#}
#above(1:20,12)
# columnmean <- function(y){ # ADD , removeNA=True
#   nc<-ncol(y)
#   means<-numeric(nc)
#   for(i in 1:nc){
#     means[i]<-mean(y[,i])# ADD , na.rm = removeNA
#   }
#   means
# }
# mydata<-rnorm(100)
# sd(mydata)
# sd(x=mydata)
# sd(mydata, na.rm=F)
# sd(na.rm=FALSE, x = mydata)
# sd(na.rm=FALSE, mydata)


## Help
#?lm
#args(lm)
# f<- function(a, b){ # function poorly defined but will still work
#   a^2
# }
# f(2)

# f<- function(a,b){
#   print(a)
#   print(b)
# }
#f(45)
#f(b=45)

# myplot<- function(x,y,type="1", ...){
#   plot(x,y,type=type,...)
# }
#args(paste)
#paste("a","b", sep = ":") # Args after ... has to be called explictly

### R Scoping Rules (not important at this stage you can read/watch if you want)

### Standards when coding (with R specifics as well)
# But the basic idea is that a text format, can be read by pretty much any basic editing program.
# when you're writing code, you should always try to use a text editor
# the most important thing is that you understand why indenting is important.
# we can change the indenting in R Studio 
# Preferences menu -> Code Editing
# makes code more readable
# A good indenting policy not only makes the code more readable, but it actually can force you to think about writing your code in a slightly different way.
# limit the length of your functions.
# Splitting up your functions has a secondary benefit, which is that it can help you in debugging and profiling.

### Dates and Times in R
# we talked about different data types like lists. And character vectors. And, numeric vectors, and so. This is just another type of data on top of those kinds of classes. So dates are represented by the date class. and, times are represented by two separate classes: the POSIXct and the POSIXlt class.
# Times are stored internally as the number of seconds. Since 1970, January 1st.
# Dates
# x<-as.Date("1970-01-01")
# x
# unclass(x)
# x<-as.Date("1970-01-02")
# x
# unclass(x)
# Times
# in the POSIXct class. Times are represented at just as very large integers.
# POSIXlt stores a time as a list.(stores additional useful info)
# Geneic functions that operate on both date and time
# the weekdays, month, quarter functions
# x<-Sys.time()
# x
# p<-as.POSIXlt(x)
# names(unclass(p))
# p$sec
# p$min
# p$hour
# datestring<-c("January 10, 2012 10:40","Febraury 10, 2015 10:40")
# x<-strptime(datastring,"%B %d, %Y %H:%M")
# x
# class(x)
# Operations on Date and Time
# x<- as.Date("2012-03-01")
# y<- as.Date("2012-02-28")
# x-y
# 
# x<- as.POSIXct("2012-10-25 01:00:00")
# y<- as.POSIXct("2012-10-25 06:00:00", tz ="GMT")
# y-x
# a lot of the plotting functions, will recognize date time objects. So when you try to plot An object that, that's a date time class. It will recognize that object and then format the X axis in a special way so that it will have a time element to it. 

## apply loop fns

# lapply:
#x<- list(a= 1:5, b= rnorm(10))
#x<- list(a= 1:4, b= rnorm(10), c=rnorm(20,1), d =rnorm(100,5))
#lapply(x,mean)
#x<-1:4
#lapply(x,runif, min=0, max=10)
#x<-list(a=matrix(1:4,2,2), b=matrix(1:6,3,2))
#x
#lapply(x, function(elt) elt[,1])

#sapply
#x<- list(a= 1:4, b= rnorm(10), c=rnorm(20,1), d =rnorm(100,5))
#y<-sapply(x,mean)
#y

#apply
#x<-matrix(rnorm(200),20,10)
#apply(x,2,mean) # collapse rows
#apply(x,1,mean) # collapse columns
#rowSums, rowMean, colSums, colMeans
#x<- matrix(rnorm(200),20,10)
#apply(x,1, quantile, probs=c(0.25,0.75))
#a <-array(rnorm(2*2*10),c(2,2,10))
#apply(a, c(1,2),mean)
#rowMeans(a, dims=2) # rowMeans can be used for arrays

#mapply
# x<- list(rep(1,4), rep(2,3), rep(3,2),4)
# x
# mapply(rep, 1:4, 4:1)

# noise<- function(n, mean, sd){
#  rnorm(n,mean,sd)
#  }
#noise(5,1,2)
#noise(1:5,1:5,2) # doesn't work well 
#mapply(noise, 1:5,1:5,2)
#list(noise(1,1,2),noise(2,2,2),noise(3,3,2),noise(4,4,2),noise(5,5,2))

#tapply:
# x<-c(rnorm(10),runif(10),rnorm(10,1))
# f<-gl(3,10)
# f
# tapply(x,f,mean,simplify=T)
# tapply(x,f,range) # min and max

#Split:
#str(split)
#function(x,f,drop = F,...)
# x<- c(rnorm(10),runif(10),rnorm(10,1))
# f<-gl(3,10)
# split(x,f)
# lapply(split(x,f),mean)
#library(datasets)
#head(airquality)
#s<-split(airquality, airquality$Month)
#s
#lapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R","Wind")]))
#sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R","Wind")],na.rm =T))

# x<- rnorm(10)
# f1 <-gl(2,5)
# f2 <-gl(5,2)
# f1
# f2
# interaction(f1,f2)
# str(split(x, list(f1,f2),drop = TRUE))

## Debugging Tools
# There are messages, warning and errors
#log(-1) # warning
# printmessage <- function(x){
#   if(x>0)
#     print("x is greater than zero")
#   else
#     print("x is less than or equal to zero")
#   invisible(x) #?
# }
# printmessage(1)
# printmessage(NA)
# if(is.na(x))
#  print("x is a missing value")
# x<-log(-1)
# printmessage2(x)

# Debugging Tools
# traceback fn
# debug/browser fns
# trace fn# allows you to insert debugging code
# recover # error handling function, stop execution at the point of the error

# trace
# mean(b)
# traceback() # not very handy here
# lm(b~y)
# traceback() # have to be called after error

# debug
# debug(lm)
# lm(b~y)
# in Browse write n to run next line

# recover
# options(error = recover)
# read.csv("nosuchfile")

## str function, compactly display the internal structure of an R object
# basic goal is the answer what is in this object
# can use summary fn as an alternative
# str(lm)
# str(ls)
# x<- rnorm(100,2,4)
# summary(x)
# str(x)
# f<-gl(40,10)
# str(f)
# summary(f)
# library(datasets)
# head(airquality)# look at the first 6 rows
# str(airquality) 
# m<- matrix(rnorm(100),10,10)
# str(m)
# m[,1]
# s<-split(airquality,airquality$Month)
# str(s)

# Simulation functions
# rnorm, dnorm (density), pnorm (comulative), qnorm (quantile), rpois
#dnorm(x, mean=0, sd=1, log= F)
#pnorm(q,0,1,lower.tail=TRUE, log.p=F)
#qnorm(p,0,1)
#rnorm(n,0,1)
# x<-rnorm(10)
# x<-rnorm(10,20,2)
# x
#set.seed(1) # used to retrieve the pesudo-random numbers
#rnorm(5)
# rpois(10,1)
# rpois(10,2)
# rpois(10,20)
# ppois(2,2)
# ppois(4,2)

# Simulating a Linear Model
#lamda = bo+b1X+epselon
# set.seed(20)
# x<-rnorm(100)
# e<- rnorm(100,0,2)
# y<- 0.5 +2*x+e
# summary(y)
# plot(x,y)
# binary numbers
# set.seed(10)
# x<-rbinom(100,1,.5)# PROBABLITY OF 1 IS 0.5
# e<- rnorm(100,0,2)
# y<- 0.5 +2*x+e
# summary(y)
# plot(x,y)
# Generating Random Number from a generalized linear model
# set.seed(1)
# x<- rnorm(100)
# log.mu<-0.5+.3*x
# y<-rpois(100, exp(log.mu))
# summary(y)
# plot(x,y)

# # Sampling fn
# set.seed(1)
# sample(1:10,4)
# sample(letters,5)
# sample(1:10)# if you don't specify number you get a permutation
# sample(1:10,replace=T)

## R Profiler
# is code running slowly?
# systematic way to get time yur program runs and it's breakdown
# Optimization comes at a later stage/ deign ur code first
# system.time() fn # take an R expression and gives you the time it took to evaluate it in seconds
# user time (amount of time the computer experience)/ elapsed time( the time you experience) usually close
# parallel package
# Elapsed time > user time
# system.time(readLines("http://www.jhsph.edu"))
## Elapsed time < user time if you have multiple cores
# hilbert<- function(n){
#   i<- 1:n
#   1/outer(i-1,i,"+")
# }
# x<-hilbert(1000)
# system.time(svd(x)) #singular value decomposition
# to use it you need to know where to look and where is the problem

## R Profiler
#Rprof, summaryRprof fns
# not used/needed in fast running programs
# by.total/by.self
#sample.interval, sampling.time
