function [root,iterf]=my_bisection_function_brayan_barajas(f,a,b,iter,error)
c=(a+b)/2;

    if sign(f(a))==sign(f(c))
        a=c;
    else 
        b=c;
    end
err=abs(b-a);
cont=2;
while cont<=iter || err>error
    cn=(a+b)/2;
    err=abs(cn-c);
    c=cn;
    if sign(f(a))==sign(f(c))
        a=c;
    else 
        b=c;
    end
    iterf=cont;
    cont=cont+1;
end
root=c;

disp('La raíz es: ')
disp(root)
end
