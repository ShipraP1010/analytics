(grades=sample(c('A','B','C','D'),size=30,replace=T,prob=c(.4,.3,.2,.1)))
(gradesF=factor(grades))
summary(grades)
summary(gradesF)
table(grades)
table(gradesF)
class(gradesF)
(gradesF0=factor(grades,ordered=T))
(gradesF01=factor(grades,ordered=T,levels=c('D','A','B','C')))
summary(gradesF01)

(marks=ceiling(rnorm(30,mean=60,sd=5)))
(gender=factor(sample(c('M','F'),size=30,replace=T)))
(student=data.frame(marks,gradesF01))
boxplot(marks~gradesF01+gender,data=student)
boxplot(marks)
summary(marks)
abline(h=summary(marks))
