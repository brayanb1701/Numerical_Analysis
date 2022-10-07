f=@(x) 1500*exp(x)+475*((exp(x)-1)/x)-2264;
[root,iterf]=my_bisection_function_brayan_barajas(f,0.01,1,0,1e-10);
figure,fplot(f,[0.01,1]),title("Interpreting Problem"),legend('f(x)'),xlabel('Eje X'),ylabel('Eje y')
hold on
plot(root,f(root),"*",'DisplayName','Raíz')