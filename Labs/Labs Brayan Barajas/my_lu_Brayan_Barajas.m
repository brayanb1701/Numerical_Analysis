function [L,U]=my_lu_Brayan_Barajas(A)
[m,n]=size(A);
disp(m)
disp(n)
d=ones(m,1);
L=diag(d);
U=A;
for i=1:n
    disp(["Iteracion columna:", i])
        
            for j=i:m-1
                if U(i,i)==0
                    reemp=U(i,:);
                    U(i,:)=U(i+1,:);
                    U(i+1,:)=reemp;
                    disp(U);
                end
                disp(["Iteracion fila:", j+1])
                m=U(j+1,i)/U(i,i);    
                L(j+1,i)=m;
                U(j+1,:)=U(j+1,:)-m*U(i,:);
            end
        
end

end