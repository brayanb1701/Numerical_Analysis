x1=[0.5 0.8 1.1 1.8 4.0];
y1=[7.1 4.4 3.2 1.9 0.9];
m1=-1;

disp("TABLA 1")
[A1,e1]=power_fit_Brayan_Barajas(x1,y1,m1);
disp("El valor de A para y=A/x es:")
disp(A1)
disp("El error para y=A/x es:")
disp(e1)
m2=-2;
[A2,e2]=power_fit_Brayan_Barajas(x1,y1,m2);
disp("El valor de A para y=A/x^2 es:")
disp(A2)
disp("El error para y=A/x^2 es:")
disp(e2)

disp("TABLA 2")
x2=[0.7 0.9 1.1 1.6 3.0];
y2=[8.1 4.9 3.3 1.6 0.5];
[A1,e1]=power_fit_Brayan_Barajas(x2,y2,m1);
disp("El valor de A para y=A/x es:")
disp(A1)
disp("El error para y=A/x es:")
disp(e1)
[A2,e2]=power_fit_Brayan_Barajas(x2,y2,m2);
disp("El valor de A para y=A/x^2 es:")
disp(A2)
disp("El error para y=A/x^2 es:")
disp(e2)


x3=[-6 -2 0 2 6];
y3=[-5.3 -3.5 -1.7 0.2 4.0];
[A,B,e2]=least_square_line_Brayan_Barajas(x3,y3)
