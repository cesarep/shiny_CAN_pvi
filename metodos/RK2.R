X = x0; Y = y0
K1 = dydx(x0, y0)
K2 = dydx(x0 + h, y0 + h*K1)
for(i in 1:N){
   X[i+1] = X[i] + h
   Y[i+1] = Y[i] + h*(K1[i] + K2[i])/2
   K1[i+1] = dydx(X[i+1], Y[i+1])
   K2[i+1] = dydx(X[i+1] + h, Y[i+1] + h*K1[i+1])
}
tabela <- cbind(i = 0:N, X, Y, K1, K2)
cab = c("i", 'x_i', 'y_i', 'K_1', 'K_2')