function [L,U]=my_lu_Brayan_Barajas(A)
[m,n]=size(A);
d=ones(m,1);
L=diag(d);
U=A;
for i=1:n
    for j=i+1:m
        mult=U(j,i)/U(i,i);
        L(j,i)=mult;
        U(j,:)=U(j,:)-mult*U(i,:);
    end
    
end

end