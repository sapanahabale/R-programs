# Data Frames
# slicing Data Frames
a = c(42,18,91,87,66)
b = c("p","q","r","s","t")

data.frame(a,b)
df = data.frame(a,b)

df1 = data.frame(
  Training=c("Strength","Stamina","Other"),
  Pulse=c(100,150,120),
  Duration=c(60,30,45)
)

df1

df1[,1]#all rows, 1st col


df1[2,]

df1[,3]

df1[,]

df1$Training

df2 = data.frame(height=c(150,160,weight=c(65,72))
                 
                 
 food = data.frame(name=c("Pav BHaji","Paneer Masala","kaju katali",
                          "Butter Chiken","Gulabjamun","Mutton Biryani"),
                   type=c("Veg","Veg","Veg","Nonveg","Veg","Nonveg"),
                   taste=c("Spicy","Spicy","Sweet","Spicy","Sweet","Spicy"),
                   price=c(120,235,240,340,90,315))                
food

# Rows with food type: Veg

food[food$type=="Veg",]

  
# food names and prices of all Nonveg items


food[food$type=='NOnveg',c(1,4)]
#or
food[food$type=='Nonveg',c("name","price")]


# all spicy food with price less than 300


food[food$taste=='Spicy' & food$price<300,]

food[food$taste=='Spicy' | food$price,300,]


# Orange, mtcars are built in data set. Learn with this dataset.
Orange
mtcars

dim(mtcars)# no of rows and no of columns
nrow(mtcars)#no of rows
ncol(mtcars)# no of columns
str(mtcars)#structure - col names data type and values
summary(mtcars)

help(mtcars) # info of dataset
mtcars$cyl # individual col cyl values
table(mtcars$cyl)# there are 11 cars having 4 cylinders,7 cars 
mtcars$gear
table(mtcars$gear)

#USArrest- another dataset
USArrests
help("USArrests")
View(USArrests) # dataset opens in new windows in table srtucture 

head(USArrests)# by default shows first 6 records
tail(USArrests)
head(USArrests,8)
tail(USArrests,10)


