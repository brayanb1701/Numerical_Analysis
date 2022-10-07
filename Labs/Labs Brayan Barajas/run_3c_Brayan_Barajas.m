f=@(x) exp((-x.^2)/2);
a=0;
b=5;
M=5;
format long
pa1=my_trapezoidal_function_Brayan_Barajas(f,a,b,M)
pa2=my_simpson_function_Brayan_Barajas(f,a,b,M)

prob1=(1/2)+(1/sqrt(2*pi))*pa1
prob2=(1/2)+(1/sqrt(2*pi))*pa2