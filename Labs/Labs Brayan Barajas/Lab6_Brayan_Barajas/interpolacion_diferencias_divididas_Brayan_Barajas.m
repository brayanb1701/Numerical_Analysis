disp('interpolacion');

X=input('Ingrese los puntos pertenecientes a las x: ');
 
Y=input('Ingrese los puntos pertenecientes a las y: ');
[sizee,~]=size(Y)
DD=zeros(sizee);
DD(:,1)=Y;
for k=2:sizee
    for J=k:sizee
        DD(J,k)=[DD(J,k-1)-DD(J-1,k-1)]/[X(J)-X(J-k+1)];
    end
end
disp('La matriz de diferencias divididas es:');
disp(DD);
disp('El polinomio de newton es');
syms x;
polnew=DD(1,1);
P=1;
for i=1:sizee-1
    P=P*(x-X(i));
    polnew=polnew+P*DD(i+1,i+1);
end
polnew=expand(polnew);
pretty(polnew);
x=input('ingrese el valor de x a interpolar,x=');
vi=eval(polnew);
fprintf('el valor interpolado es %.2f\n',vi);
hold on;
ezplot(polnew,[X(1) X(n+1)]);
plot(x,vi,'r+');