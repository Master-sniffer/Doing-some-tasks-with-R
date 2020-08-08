a <- c(3,5, 1, -7, 1, -1, 5,13, 3, 5, 1, -7, 1, -1, 5, 13)
b <- c(1, -1, 5 ,13, 1, -1, 5, 13, 3, 5, 1, -7, 1, -1, 5, 13)
d <- c(1, -1, 5,13, 0, 6, 3, -65, 0, -2, 1, 12,5, 8, 3, 6)
#task 1
fe <- 7*(a)-25*(b)
se <-8*((a%*%b)/(norm(a, type="2")b, type="2"))%*%d-3*(norm(a, type="2"))%*%b
te <-21*((a%*%d)/(norm(a, type="2")d, type="2"))%*%b+(4*b)*(d%*%d)-(norm(b, type="2"))%*%b
print ("first ex")
fe
print ("second ex")
se
print ("third ex")
te

#task 2
#cbind(c(cos(pi/3), sin(pi/3)), c(-sin(pi/3), cos(pi/3)))
print ("проведите путь к файлу по типу Data <- C:\\Users\\User\\Desktop\\data.xlsx")

#library("xlsx") # Для считывания данных из excel-файлов типа xlsx
#library("dplyr")
#first <- select(Data,first)
#second <-select(Data,second)
#total <- select(Data,total)
#jeez <- first+second=total
#jeez
#alternative

#print ("thats an ex 2")
#first <- c(a,b,c,d,e,26*f,g,h)
#second<- c(b,c,d,e,f,g,h,a)
#total <- c(3,5,7,9,11,163,15,9)
#jeez <- first+second=total
#jeez

#task 3
library (float)
folk <- rbind(c(19, 0, 0, 0, 0, 0, 0, 20) ,c(0, 17, 0, 0, 0, 0, 0, 0), c(0, 0, 13, 0, 0, 0, 0, 0), c(0, 0, 0, 3, 0, 0, 31, 0),c(0, 0, 0, 0, 7, 0, 0, 0), c(0, 0, 0, 0, 0, 5, 0, 0),c (0, 0, 0, 31, 0, 0, 11, 0), c(0, 0, 0, 0, 0, 0 ,0, 1))
gar <- eigen(folk)
gar <- round (gar,4)
gar

#task 4

A <- rbind (c( 26 3 7 9 -3 3 3 -47),c( 3 5 9 7 31 1 1 -19), c( 5 7 7 5 37 -1 -1 5), c( 7 9 5 3 31 -3 -3 7), c( 9 7 3 1 37 -5 -3 9), c( 7 5 1 -1 41 0 31 1), c( 5 3 -1 -3 43 1 37 3), c( 2626 1 -3 -5 47 0 41 5))
B <- rbind (c( 26 3 0 9 17 3 3 0), c( 3 5 0 7 19 1 1 0), c ( 3 5 0 7 19 1 1 0), c ( 99 9 5 3 31 -3 -3 0), c ( 9 7 3 1 -37 -5 -3 0), c( 7 5 1 -1 -41 0 31 1), c( 0 0 0 0 1 0 0 0), c( 2626 1 -3 -5 -47 0 41 5))
E <- diag (8)
total <- solve(B%*%A)
trotal <- solve(total,E)
trotal
