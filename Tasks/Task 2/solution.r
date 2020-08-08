#задание 3
print ("task 3")
A <- matrix (c(9,-1,3,5,4,-9,18,-3,8,-2,-3,8,1,-8,-12,1,-9,7,-13,7,-8,-9,-9,-4,-7,-2,5,-2,20,-2,9,2,-4,-6,-1,-6),6,6)
A
#определитель
det(A) # Определитель A


#задание 5
print ("5 task")
a <- c(-1,2,-3,1,-2,3,0,4,-1,1,2,2)
b <- c(1,4,5,3,2,2,-1,-3,0,1,3,3)
p <- c(2,0,3,1,-2,4,4,0,2,-5,1,2)

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
set.objfn(M, c(1,5)) # Задаем целевую функцию:
add.constraint(M, c(-2,4), ">=", -4) # Задаем ограничение:
add.constraint(M, c(-2, -3), "<=",-4) #
add.constraint(M, c(-2, 1), "<=",2) #


rownames(M) <- c("A", "B","C") # Называем ограничения в модели М
M # Выводим модель M на экран
solve.lpExtPtr(M)
get.variables(M) # Оптимальный план
get.objective(M) # Достигнутый min
X1.opt<- get.variables(M)[1]; X1.opt # Оптимальное значение для X1
X2.opt<- get.variables(M)[2]; X2.opt # Оптимальное значение для X2
f.max<- get.objective(M); f.max# Значение целевой функции на оптимальном решении
