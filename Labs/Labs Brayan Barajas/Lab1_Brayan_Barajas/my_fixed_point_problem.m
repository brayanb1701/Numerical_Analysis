function my_fixed_point_problem(p0, ni)
x=p0;
for i=1:ni
    y = 5*exp(-0.5*x)-1+x;
    ek=abs(y-x);
    er=abs(ek/y);
    error(i)=ek;
    errorrel(i)=er;
    x=y;
    disp(['Iteración ',num2str(i),': ', num2str(y)])
    disp(['Error Absoluto: ',num2str(error(i))])
    disp(['Error Relativo: ',num2str(errorrel(i))])
    fprintf("\n")
    
end
disp('Errores absolutos:')
disp(error)
disp('Errores relativos:')
disp(errorrel)