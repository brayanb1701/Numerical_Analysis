function [root,iterf]=my_visual_bisection_function_brayan_barajas(f,a,b,iter,error)
fplot(f,sort([a,b])),title("Bisection Method"),legend('f(x)'),xlabel('Eje X'),ylabel('Eje y')
c=(a+b)/2;
hold on
plot(c,f(c), '*','DisplayName','Iteracion 1')
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
    plot(c,f(c), '*','DisplayName',['Iteracion ' num2str(cont)])
    if f(c)==0, break, end
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
