print ("first task")

a <- c( -1, 0, 2, 3, -5, 6, 0, 5, -1, 0, 5, -6, 0, 6, -8, 9)
b <- c( 6, 1, -6, -3, -8, 7, 0, 10, -4, -6, 4, 1, -3, 0, -2, 4)
p <- c ( -4, 6, -7, 3, 0, -7, 5, 4, 3, -6, 7, 1, 0, 4, -2, 3)
fir <- ((7)*a)+(2*b)
print ("first answer")
fir
sec <- ((-2)*as.numeric(a%*%b))*p+5*(norm(p, type="2"))*a
print ("second answer")
sec
thr <- (-2)*(norm(p, type="2"))*p-7*as.numeric(a%*%b)*p+9*as.numeric(b%*%p)*a
print ("third answer")
thr

Задача 2

print ("second task")
mat <- rbind(c(0,0,0,-1,8,0,6,-1),c(0,0,0,8,4,0,-5,4),c(0,0,0,11,3,0,0,6),c(7,0,0,0,0,8,0,-2),c(4,0,0,0,0,-4,-2,-6),c(-3,0,-4,0,-2,0,0,0),c(13,-7,0,8,1,0,0,0),c(-4,0,0,9,-5,0,0,0))
rua <- c(5,-5,-14,10,-6,2,2,8)
X <- solve(mat)%*%rua
print ("Answer for the sec task")
X
mat%*%X
rua

задача 4

print ("fourth task")
A <- rbind(c(19, 0 ,0 ,0 ,0 ,0 ,0 ,20),c(0 ,7 ,0 ,0, 0, 0, 0, 0),c(0, 0, 13, 0, 0, 0, 0, 0),c(0, 0, 0, 11, 0, 0, 0, 0),c(0, 9, 0, 0, 17, 0, 0, 0),c(0, 0, 0, 0, 0, 5, 0, 0),c(0, 0, 0, 0, 0, 0, 3, 0),c(0, 0, 0, 0, 0, 0, 0, 1))
A
options(digits=3) # Задать количество значащих цифр для вывода
print ("собственные числа ")
d <- eigen(A)$values; d # Собственные значения матрицы A
print ("собственные вектора")
P <- eigen(A)$vectors; P # Собственные векторы A, стоящие в столбцах матрицы
P
print (" Проверим ортогональность полученного собственного базиса ")
sum(P[,1]^2) # Например, длина первого собственного вектора
P[,1] %*% P[,2] # Например, скалярное произведение (f1, f2)
sum(P[,2]^2); P[,2] %*% P[,3] # длина 2 собственного вектора и (f2, f3)
sum(P[,3]^2); P[,3] %*% P[,4] # длина 3 собственного вектора и (f3, f4)
sum(P[,4]^2); P[,4] %*% P[,5] # длина 4 собственного вектора и (f4, f5)
sum(P[,5]^2); P[,5] %*% P[,6] # длина 5 собственного вектора и (f5, f6)
sum(P[,6]^2); P[,6] %*% P[,7] # длина 6 собственного вектора и (f6, f7)
sum(P[,7]^2); P[,7] %*% P[,8] # длина 7 собственного вектора и (f7, f8)
sum(P[,8]^2); P[,8] %*% P[,1] # длина 8 собственного вектора и (f8, f1)
print ("Таким образом, получили что полученный базис составляют нормированные и
ортогональные между собой вектора, т.е ортонормированный базис.
Таким образом, получили что полученный базис составляют нормированные и
ортогональные между собой вектора, т.е ортонормированный базис.")

задача 6

print ("sixth task")
install.packages("lpSolveAPI") # Загружаем библиотеку
library(lpSolveAPI) # Активируем библиотеку линейного программирования
M <- make.lp(ncol= 2) # Объявляем количество неотрицательных переменных в M
name.lp(M, "Example") # Объявляем название "Example"для задачи(модели) М
colnames(M) <- c("X1", "X2") # Объявляем названия переменных в модели М
lp.control(M, sense = "max")$sense# Объявляем задачу на минимум модели М
set.objfn(M, c(10, 15)) # Задаем целевую функцию: f = 5*X1 +3*X2 для модели М
add.constraint(M, c(1,4), ">=", 4) # Задаем ограничение:
add.constraint(M, c(-3, 1), ">=", -10) # Аналогично
add.constraint(M, c(-8, 5), "<=", 29) # Аналогично
add.constraint(M, c(5, 2), "<=", 54) # Аналогично
rownames(M) <- c("A", "B", "C", "D") # Называем ограничения в модели М
M
solve.lpExtPtr(M)
get.variables(M) # Оптимальный план
get.objective(M)
X1.opt<- get.variables(M)[1]; X1.opt # Оптимальное значение для X1
X2.opt<- get.variables(M)[2]; X2.opt # Оптимальное значение для X2
f.max<- get.objective(M); f.max 
