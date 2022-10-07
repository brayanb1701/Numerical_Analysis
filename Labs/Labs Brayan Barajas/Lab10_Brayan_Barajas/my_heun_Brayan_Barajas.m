function H=my_heun_Brayan_Barajas(f,a,b,ya,M)
h=(b-a)/M;
T=zeros(1,M+1);
Y=zeros(1,M+1);
T=a:h:b;
Y(1)=ya;
for j=1:M
f1=feval(f,T(j),Y(j));
f2=feval(f,T(j+1),Y(j)+h*f1);
Y(j+1)=Y(j)+(h/2)*(f1+f2);
end
H=[T' Y'];