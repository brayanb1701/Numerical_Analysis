f=@(x) x.^3-5*x-2 ;
df= @(x) 3*x.^2-5;
r1=-1.5;
r2=-1;
r3=1.5;
disp("Raíz 1")
my_newton_function_brayan_barajas(f,r1,df,6,1e-5);
disp("Raíz 2")
my_newton_function_brayan_barajas(f,r2,df,6,1e-5);
disp("Raíz 3")
my_newton_function_brayan_barajas(f,r3,df,6,1e-5);
