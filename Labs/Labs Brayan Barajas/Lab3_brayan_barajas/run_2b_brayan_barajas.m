f=@(x) x.^3-5*x-2 ;
df= @(x) 3*x.^2-5;
r1=-1.5;
disp("Raíz 1")
my_visual_newton_function_brayan_barajas(f,r1,df,4);