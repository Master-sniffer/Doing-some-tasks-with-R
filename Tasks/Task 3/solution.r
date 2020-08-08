#задание 2
print ("task 2")
A <- matrix (c(-1,-3,-6,0,-3,3,-11,0,-8,-5,-5,-1,4,-7,-7,-5,-9,-7,-1,-8,11,-7,2,4,3,-4,7,10,4,8,-10,3,-5,-11,7,9),6,6)
A
#определитель
det(A) # Определитель A
#обратная
solve(A)
#транспон
t(A)
#задание 3
print ("task 3")
a <- c(2,-3,3,5,1) #
print ("Answer on the second task")
polyroot(a)

#задание 4
print ("task 4")
Q <- cbind(c(1,2,1),c(1,3,2),c(7,0,-1)) # Составить матрицу из трех столбцов-векторов
Q
d <- eigen(Q)$values;d
d1 <- round(d, 3); d1
D <- diag(d1); D



#задание 5
print ("5 task")
a <- c(1,5,-1,2,0,6,-2,1,1,-3,5,1)
b <- c(0,2,3,1,-4,-1,0,2,1,4,1,3)
p <- c(-3,0,-1,-1,0,4,3,2,-5,1,1,-6)

fir <- ((3)*a)-(4*b)
print ("first answer")
fir
sec <- ((2)*as.numeric(a%*%b))*p+2*(norm(p, type="2"))*a
print ("second answer")
sec
thr <- 3*as.numeric(a%*%p)*b+2*as.numeric(b%*%p)*a-2*(norm(p, type="2"))*p
print ("third answer")
thr

#6 задание
print ("sixth task")
install.packages("lpSolveAPI") # Загружаем библиотеку
library(lpSolveAPI) # Активируем библиотеку линейного программирования
M <- make.lp(ncol= 2) # Объявляем количество неотрицательных переменных в M
name.lp(M, "Example") # Объявляем название "Example"для задачи(модели) М
colnames(M) <- c("X1", "X2") # Объявляем названия переменных в модели М
lp.control(M, sense = "min")$sense# Объявляем задачу на минимум модели М
set.objfn(M, c(22,25)) # Задаем целевую функцию:
add.constraint(M, c(6,8), "<=", 80) # Задаем ограничение:
add.constraint(M, c(4, 6), "<=",120) #
add.constraint(M, c(4, 5), "<=",70) #
add.constraint(M, c(1, 0), "<=",12)
add.constraint(M, c(0, 1), "<=",14)

rownames(M) <- c("A", "B","C","D","E") # Называем ограничения в модели М
M # Выводим модель M на экран
solve.lpExtPtr(M)
get.variables(M) # Оптимальный план
get.objective(M) # Достигнутый min
X1.opt<- get.variables(M)[1]; X1.opt # Оптимальное значение для X1
X2.opt<- get.variables(M)[2]; X2.opt # Оптимальное значение для X2
f.max<- get.objective(M); f.max# Значение целевой функции на оптимальном решении
