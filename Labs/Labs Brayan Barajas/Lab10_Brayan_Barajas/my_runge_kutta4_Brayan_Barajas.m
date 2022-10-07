function R=my_runge_kutta4_Brayan_Barajas(f,a,b,ya,M)
h=(b-a)/M;
T=zeros(1,M+1);
Y=zeros(1,M+1);
T=a:h:b;
Y(1)=ya;
for j=1:M
f1=h*feval(f,T(j),Y(j));
f2=h*feval(f,T(j)+h/2,Y(j)+f1/2);
f3=h*feval(f,T(j)+h/2,Y(j)+f2/2);
f4=h*feval(f,T(j)+h,Y(j)+f3);
Y(j+1)=Y(j)+(f1+2*f2+2*f3+f4)/6;
end
R=[T' Y'];