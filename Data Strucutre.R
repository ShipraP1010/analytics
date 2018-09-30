# Data structure in R


# vectors----
x=1:10 #create sequence of numbers from 10 to 10
x
x1<- 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x2b = c('a',"Shipra","4"))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)
x5=c(3L,5L)
(x5b=c(1,'a',T,4L))
class(x5b)

#access elements
(x6=seq(0,100,by=3))
methods(class='data.frame')
?seq
#[1]0 2 4 6 8 10
ls() #variables in my environment
x6
length(x6)
x6[20]
x6[3] #access 3rd element
#[1] 4
x6[c(2,4)] #access 2nd and 4th element
x6[-1] #access all but 1st element
x6[c(2.4,3.54)] #real numbers truncated to integers

x6[-(length(x6)-2)]
#modify
sort(x6)
sort(x6, decreasing=T)
sort(x6, increasing=F)
rev(x6)
(x7=c(x6,x2))

sort(x6[-c(1,2)])
(x=-3:2)
#[1] -3 -2 -1 0 1 2

seq(-3,10,by=.2)
x6[-c(12)]
(x=-3:2)
x[2]<-0;x
x<0
x[x<=1 & x>=-1] =100; x
x[x<0]=5;x
x=x[1:4];4

#[1] 5 0 5 0

#delete vector
(x=seq(1.5, length.out=10))
#[1]1.00 1.444 1.889 2.333 2.778 3.222 3.667 4.111 4.556 5.000
x=NULL
x
#NULL
x[4]

(x=rnorm(100))
plot(density(x))
(x1=rnorm(10000, mean=50,sd=5))
plot(density(x1))
abline(v=mean(x1),h=0.04)


# matrix----
x=100:124
length(x)
matrix(x,ncol=6)
(m1=matrix(1:12,nrow=4))
(m2=matrix(1:12,ncol=3,byrow=T))
m1[1,2:3]
m1[c(1,3),]
m1[,1]
paste("c","d",sep="-")
paste("c",1:100,sep="-")
(colnames(m1)=paste('c',1:3,sep=''))

#Vector to Matrix
(m3=1:24)
dim(m3)=c(6,4)

sweep(m1,MARGIN=1,STATS=c(2,3,4,5),FUN="+") #rowise
sweep(m1,MARGIN=2,STATS=c(2,3,4),FUN="*") #colwise

#addmargins
addmargins(m1,margin=1,sum)
addmargins(m1,1,sd)

addmargins(m1,2,mean)
addmargins(m1,c(1,2),mean)
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))


# arrays----

# data frame----
(rollno=1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('M','F'),size=30,replace=T,prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'),size=30,replace=T,prob=c(.5,.5)))
rollno;sname;gender
marks;marks2;course

#create DF
df1=data.frame(rollno,sname,gender,marks,marks2,course,stringAsFactors=F)
str(df1)
head(df1)
head(df1,n=3)
tail(df1)
class(df1)
summary(df1)
df1$gender=factor(df1$gender)
df1$course=factor(df1$course)
str(df1)
summary(df1)

?sample
#Factors----

#List----