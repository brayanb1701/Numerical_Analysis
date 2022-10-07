function [A,B,e2]= least_square_line_Brayan_Barajas(xk,yk)
[~,n]=size(xk);
sumx2=0;
sumx=0;
sumxy=0;
sumy=0;
sum=0;

    for i=1:n
        sumx2=sumx2+(xk(i).^(2));
        sumx=sumx+xk(i);
        sumxy=sumxy+xk(i)*yk(i);
        sumy=sumy+yk(i);
    end
mat=[sumx2 sumx; sumx n];
b=[sumxy;sumy];
x=mat\b;
A=x(1);
B=x(2);
    f=@(x) A*x+B;
    for i=1:n
        sum=sum+(f(xk(i))-yk(i))^2;
    end
    e2=(1/n)*sum^(1/2);
end