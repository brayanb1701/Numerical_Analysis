function [A,e2]= power_fit_Brayan_Barajas(xk,yk,m)
[~,n]=size(xk);
num=0;
d=0;
sum=0;
    for i=1:n
        num=num+(xk(i).^(m))*yk(i);
        d=d+(xk(i)).^(2*m);
    end
    A=num/d;
    f=@(x) A*x.^m;
    for i=1:n
        sum=sum+(f(xk(i))-yk(i))^2;
    end
    e2=(1/n)*sum^(1/2);
end