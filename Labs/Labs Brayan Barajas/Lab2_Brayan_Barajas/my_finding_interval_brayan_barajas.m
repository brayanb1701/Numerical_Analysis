function [a,b]=my_finding_interval_brayan_barajas(f)
    a=0;
    b=rand(1)*30-10;
    while sign(f(a))==sign(f(b))
        a=rand(1)*30-10;
        b=rand(1)*30-10;       
    end
    p=[a b]; 
    p=sort(p);
    disp('El intervalo es: ')
    disp(p)
end