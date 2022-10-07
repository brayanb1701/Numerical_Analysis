% Se requiere de 40N para estirar un resorte desde su posición natural (x=10cm) hasta x=15cm.
% Calcular el trabajo necesario para desplazar el resorte desde 15cm a 20cm.
% Teniendo en cuenta la ley de Hooke, f(x)=k*x    ==    k*0.05=40     k=800
% El trabajo se define como la integral de la fuerza, por tanto:

f=@(x) 800*x;
a=0.05;
b=0.08;
M=5;
trabajo1= my_trapezoidal_function_Brayan_Barajas(f,a,b,M)
trabajo2=my_simpson_function_Brayan_Barajas(f,a,b,M)