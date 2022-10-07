
clc;
 
clear;
 
 
fprintf('INTERPOLACION "POLINIMIO DE LAGRANGE"\n\n\n');
 
xi=input('Ingrese los puntos pertenecientes a las x: ');
 
yi=input('Ingrese los puntos pertenecientes a las y: ');
 
 
n=length(xi);
 
x=sym('x');
 
for j=1:n
 
producto=1;
 
for i=1:j-1
 
producto=producto*(x-xi(i));%calculo del producto 1 superior de L
 
end
 
producto2=1;
 
for i=j+1:n
 
producto2=producto2*(x-xi(i));%calculo del producto 2 superior de L
 
end
 
producto3=1;
 
for i=1:j-1
 
producto3=producto3*(xi(j)-xi(i));%calculo del producto 3 inferior de L
 
end
 
producto4=1;
 
for i=j+1:n
 
producto4=producto4*(xi(j)-xi(i));%calculo del producto 4 inferior de L
 
end
 
L(j)=(producto*producto2)/(producto3*producto4);%cálculos de las L para
 
fprintf('\n L%d:\n',j-1)%poder hallar el polinomio
 
disp(L(j))
end
 
pn=0;
 
for j=1:n
 
pn=pn+L(j)*yi(j);%calculo del polinomio interpolante
 
end
 
fprintf('\n POLINOMIO INTERPOLANTE: \n')
 
pn = simplify(pn);%este comando nos permite simplificar toda la expresion
 
disp(pn);
opc=input('\nDesea aproximar un valor (si/no): ','s');
 

 
if opc=='si'
 
x=input('\nIngrese el punto a aproximar: ');
 
y=eval(pn);
 
disp('La aproximacion a f(x) es:')
 
disp(y)
 
end