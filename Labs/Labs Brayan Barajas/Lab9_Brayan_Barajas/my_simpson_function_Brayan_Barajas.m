function r=my_simpson_function_Brayan_Barajas(f,a,b,M)
    h=(b-a)/(2*M);
    x=a;
    sum=0;
    a0=a;
    for i=1:M
       f0=f(a0);
       x=x+h;
       f1=f(x);
       x=x+h;
       f2=f(x);
       sum=sum+f0+4*f1+f2;
       a0=x;
    end
    r=(h/3)*sum;

end