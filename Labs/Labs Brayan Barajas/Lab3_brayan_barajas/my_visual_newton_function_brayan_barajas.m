function root=my_visual_newton_function_brayan_barajas(f,p0,df,iter)
pn=p0;
for i=1:iter
    
    
        if(df(pn)==0)
           disp('Error: División por cero')
           break;
        else
            clf();
            fplot(f),title(['Newton Method ' 'Iteracion ' num2str(i)]),legend('f(x)'),xlabel('Eje X'),ylabel('Eje y')
            hold on
            fplot(0,'--','DisplayName','Eje x')
            p=pn-(f(pn)/df(pn));
            plot(p,f(p),'*','DisplayName','pn')
            b=-df(pn)*p;
            recta= @(x) df(pn)*x+b;
            fplot(recta,'DisplayName',"f'(x)");
            hold off
            err=abs(p-pn);
            pn=p;
            pause(3);
        end
    
    
    
end
root=pn;
disp('La raíz es: ')
disp(root)
end
