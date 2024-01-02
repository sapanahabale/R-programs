
ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary = c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot (salary)
# In doTryCatch(return(expr), name,parentenv, handler)
# invalid graphics state - Solution to this 
  

plot(ages,salary)
plot(salary,ages)

help(plot)
####################################################
 
#airquality = read.cvs('path/airquality.csv',header=TRUE, s
#click on import Ddataset
data()
airquality = datasets::airquality

####Top rows and last 10 rows
head(airquality,10)
tail(airquality,10)


# To entire dataset click on airquality data set name for
#######Columns
airquality[,c(1,2)]# all rows and first two columns

df = airquality[,-6]# excludes column no.6
df

summary(airquality[,1]) # summary statistics for column 1

summary(airquality$Temp)

airquality$Wind #display column values

summary(airquality$Wind)# summary of wind column


 

summary(airquality) # summary for all columns

##################### Visualiv=zation
plot(airquality$wind)
plot(airquality$temp,airquality$Wind,type="p")
plot(airquality) # scatterplot
help (plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)

#points and lines
plot(airquality$Wind, type="p") #p: points,L: lines, B:both
plot(airquality$Wind, type="l")
plot(airquality$Wind, type="b")
help (plot)

plot(airquality$Wind,
     xlab = 'Ozone Concentration',
     ylab = 'No i=of instances',
     main = 'Ozone levels in city',
     col = 'red',
     type='l')

plot(airquality,col='red') # plot of entire datas
     
plot(airquality$Ozone, airquality$Solar.R) # x axis
plot(airquality$Solar.R,airquality$Ozone) # x - s

# Horizontal bar plot
barplot(airquality$Ozone,
        main = 'Ozone concentration in air',
        ylab = 'Ozone Levels',
        col= 'blue',
        horiz = T,
        axes=F)
help(barplot)

# Histogram (#frequency interval#)

hist(airquality$Temp)

hist(airquality$Temp,
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.',
     col='blue',
     border= 'red')

help(hist)

# Single box plot
help (boxplot)
boxplot(airquality$Wind,
     main = "Boxplot",
     col='blue',
     border= 'red',
     horizontal=T)


 boxplot.stats(airquality$Wind)$out#outlier value
 
 airquality$Wind
 
 
 # Multiple box plots
 boxplot(airquality[,1:4],
         main='Multiple Box Plots',
         horizontal=TRUE,
         col='pink')
 
 #margin of the grid (mar)(bottom ,left,top,right),
 #no of rows and columns(mfrow),
 #whether a border is to e inluded(byt)
 #and position of the
 #labels(las: 1 for horizontal, las: 0 for vertical)-
 #bty - box around the plot (o,n,7,l,c,u)
 # par means partition
par(mfrow=c(3,3),mar=c(1,2,1,2), las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Wind, type="l")
plot(airquality$Solar.R, type="l")
barplot(airquality$Ozone, main = 'Ozone Concentration',
        xlab = 'Ozone Levels',col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

#considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm=T)

#Google following functions as variance in r, etc
#var
#skewness
#kurtosis
#Density plot


var(airquality$Wind)
sd(airquality$Ozone)#,na.rm = T)standard Deviation # because
sd(airquality$Ozone, na.rm = T)

skewness(airquality$Ozone)# error
kurtosis(airquality$Ozone)# error

# Installing packages


#eg.mobile has some in built apps
# - others download scanner, whatsapp, photo  editor from play
# which library to download for skewness
#google - skewness and kurtosis in r
# go to rbloggers.com
# library (moments)
# or go to rdocumentation.r
# types skewness - you will get the name of packages as 'moments
# go to rstudio
# click on packages in 3rd window - button right corner- Click
# type moments in packages, click checkbox - install dependence
#after installation, in search - search for installed 'moment

# or try: install. packages("moments")

skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone,na.rm=T)
skewness(airquality[,1:4],na.rm=T)

# Dencity Plot
Plot(dencity(airquality$Wind))
plot(dencity(airquality$Ozone,na.rm=T))
??dencity # Check Kernel Dencity Estimation

## IN Class Exercise
e_quakes=datasets::quakes








