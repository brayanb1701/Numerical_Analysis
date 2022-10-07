%dM/dt=-kM donde k es constante (aquí se toma k=1)
f=@(t,M) -M;
a=0;
b=1;
ya=300;
M=5;
my_euler_Brayan_Barajas(f,a,b,ya,M)
M2=4;
my_heun_Brayan_Barajas(f,a,b,ya,M)

real=300*exp(-1)