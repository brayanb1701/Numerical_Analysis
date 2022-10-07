function [iter,root,fr,dfr,error]=my_newton_function_brayan_barajas(f,p0,df,iter,error)
pn=p0-(f(p0)/df(p0));
err=abs(pn-p0);
cont=2;
while cont<=iter || err>error
    if cont>iter
       disp('Se acaban de pasar el n�mero de iteraciones sin llegar al error')
       break;
    else
        if(df(pn)==0)
           disp('Error: Divisi�n por cero')
           break;
        else
            p=pn-(f(pn)/df(pn));
            err=abs(p-pn);
            pn=p;
            cont=cont+1;
        end
    end
end
root=pn;
fr=f(root);
dfr=df(root);
iter=cont-1;
error=err;
disp('Iteraci�n num: ')
disp(iter)
disp('La ra�z es: ')
disp(root)
disp('f(ra�z): ')
disp(fr)
disp("f'(ra�z): ")
disp(df(root))
disp("Error Absoluto: ")
disp(error)
end
