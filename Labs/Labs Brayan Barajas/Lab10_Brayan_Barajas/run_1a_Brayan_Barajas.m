f=@(t,y) exp(-2*t)-2*y;
a=0;
b=0.4;
ya=1/10;
M=2;
R1=my_runge_kutta4_Brayan_Barajas(f,a,b,ya,M)
M2=4;
R2=my_runge_kutta4_Brayan_Barajas(f,a,b,ya,M2)

real=(1/10)*exp(-2*0.4)+0.4*exp(-2*0.4)

err1=abs(real-R1(M+1,2))

err2=abs(real-R2(M2+1,2))

%Se comprueba que el error al pasar de h a h/2 disminuye considerablemente
%respecto al valor real obtenido, evidenciando que a menor valor de h,menor
%error.