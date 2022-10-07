function my_fixed_point(p0, ni)
x=p0;
for i=1:ni
    y = -4+4*x-((x.^2)/2);
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