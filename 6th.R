#install.packages("package_name")
library(pracma)

f = function(x, y){
  return (2*(2*x+3*y)/5);
}
ans = integral2(f,0,1,0,1)$Q
print(ans)

un_gx = function(y){
  return(2*(2+3*y)/5)
}
integral(un_gx, 0, 1)

un_gy = function(x){
  return(2*(2*x)/5)
}
integral(un_gy, 0, 1)

f1 <- function(x, y){
  return(x*y*f(x,y))
}

e_xy = integral2(f1, 0, 1, 0, 1)$Q
print(e_xy)



g = function(x, y){
  return ((x+y)/30)
}
x_vals = c(0:3)
y_vals = c(0:2)
pdf = matrix(NA, 4, 3)

for(i in 1:4){
  for(j in 1:3){
    pdf[i, j] = g(x_vals[i], y_vals[j])
  }
}

pdf

sum(pdf)

marg_x = apply(pdf, 1, sum)
marg_x[1]

marg_y = apply(pdf, 2, sum)
marg_y[1]

cond_prob = pdf[1,2]/marg_y[2]
cond_prob

e_x = sum(x_vals*marg_x)
e_y = sum(y_vals*marg_y)
e_xy = 0
for(i in 1:4){
  for(j in 1:3){
    e_xy = e_xy + x_vals[i]*y_vals[j]*pdf[i, j]
  }
}

var_x = sum(x_vals*x_vals*marg_x)-e_x*e_x
var_y = sum(y_vals*y_vals*marg_y)-e_y*e_y
cov = e_xy-e_x*e_y

e_x
e_y
e_xy
var_x
var_y
cov



