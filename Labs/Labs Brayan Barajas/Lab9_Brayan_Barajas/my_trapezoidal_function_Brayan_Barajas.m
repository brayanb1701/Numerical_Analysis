function r=my_trapezoidal_function_Brayan_Barajas(f,a,b,M)
    h=(b-a)/M;
    x=a;
    sum=0;
    a0=a;
    for i=1:M
       f0=f(a0);
       x=x+h;
       sum=sum+f0+f(x);
       a0=x;
    end
    r=(h/2)*sum;

end