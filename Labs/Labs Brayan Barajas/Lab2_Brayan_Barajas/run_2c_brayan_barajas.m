f=@(x) (x-8)*(x-3).^2;
[a,b]=my_finding_interval_brayan_barajas(f);
error=[1e-2,1e-4,1e-6,1e-8,1e-10];
iterp=[];
itert=[];
for i = error
disp('Con error de: ')
disp(i)
[root,iterf]=my_bisection_function_brayan_barajas(f,a,b,0,i);
iterp=[iterp, iterf];
itert=[itert, log2(abs((b-a)/i))];
end
figure,plot(error, iterp),title("Numero de iteraciones de acuerdo al error"),xlabel('Error'),ylabel('Iteraciones')
hold on
plot(error,itert)
legend('Practico','Teorico')
