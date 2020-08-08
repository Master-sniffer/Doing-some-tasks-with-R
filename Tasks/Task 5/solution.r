#задание 2
print ("task 2")
A <- matrix (c(-11,8,-7,0,14,-7,-1,-6,8,2,-3,8,-4,10,6,7,-4,-2,6,3,6,-4,-2,-5,10,-5,-14,9,7,9,2,-3,-8,-6,2,-9),6,6)
A
#определитель
det(A) # Определитель A

#задание 4
print ("task 4")
A <- matrix (c(-6,6,0,7,9,7,-9,-9,-9,-4,9,-5,6,-3,-7,-8,7,5,-1,3,3,9,-7,3,-3,-1,8,1,0,0,7,-8,2,-2,1,0),6,6)
A
B <- matrix (c(4,8,4,-5,9,-7,9,-8,-7,-7,5,3,-8,5,-1,7,-7,-10,11,7,-9,4,6,-7,1,-11,-1,0,-9,-9,-1,-6,-11,-4,-10,2),6,6)
B
x <- solve(A,B)
print ("x равен")
x
#проверка
y <- A%*%x
y

#задание 5
print ("5 task")
a <- c(3,3,-2,1,2,3,-4,0,-1,2,3,3)
b <- c(-2,3,3,1,1,1,0,-1,2,4,-4,2)
p <- c(4,2,2,2,5,1,3,3,0,-3,-2,-1)

fir <- ((3)*a)+(4*b)
print ("first answer")
fir
sec <- ((2)*as.numeric(a%*%b))*p+2*(norm(p, type="2"))*a
print ("second answer")
sec
thr <- 1*as.numeric(a%*%p)*b-2*as.numeric(b%*%p)*a-2*(norm(p, type="2"))*p
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
set.objfn(M, c(10,5)) # Задаем целевую функцию:
add.constraint(M, c(2,4), ">=", 4) # Задаем ограничение:
add.constraint(M, c(4, 1), ">=",1) #
add.constraint(M, c(2, -3), "<=",6) #



rownames(M) <- c("A", "B","C") # Называем ограничения в модели М
M # Выводим модель M на экран
solve.lpExtPtr(M)
get.variables(M) # Оптимальный план
get.objective(M) # Достигнутый min
X1.opt<- get.variables(M)[1]; X1.opt # Оптимальное значение для X1
X2.opt<- get.variables(M)[2]; X2.opt # Оптимальное значение для X2
f.max<- get.objective(M); f.max# Значение целевой функции на оптимальном решении
