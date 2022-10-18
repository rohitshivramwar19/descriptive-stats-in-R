x<-4
y<7

vect<-c(1,2,3,4)
vect_1<-c(1,2,"r",4)

df<-data.frame(x=1:4,y=c('a','b','c','d'))

#sclicing

varl1<-c(1,2,3,4)
print(varl1[1])

print(varl1[c(1,3)])

airquality<-datasets::airquality


#top&bottom  rows
head(airquality,10)
tail(airquality,10)

#column

airquality[50:60,c(1,2)]

#discriptive statastic

#1
summary(airquality[c(4,5)])

airquality$Ozone
airquality$Temp
airquality$Wind


#visualisation
plot(airquality$Wind,type="l")

plot(airquality$Temp,type="p")


plot(airquality$Wind,type="b")
plot(airquality$Wind,xlab = 'ozone concentration',
     ylab = 'no of instance',main = 'ozone levels in NY city', col='red', type = 'l')


#horizontal bar plot

barplot(airquality$Ozone,main = 'ozone concentration in air',ylab = 'ozone level',col='red',horiz = T,axes = T)



#HISTOGRAM

hist(airquality$Temp,col = 'red')
hist(airquality$Temp,
     main = 'solar radiation',xlab = 'solar rad', col = 'blue')



#single boxplot

boxplot(airquality$Wind,main='box plot')
boxplot.stats(airquality$Wind)


#multiple boxplots

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0, bty='o')
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
barplot(airquality$Ozone,main = 'ozone concentration in air',xlab = 'ozone level',col = 'red',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[0:4],main="multiple box plot")
