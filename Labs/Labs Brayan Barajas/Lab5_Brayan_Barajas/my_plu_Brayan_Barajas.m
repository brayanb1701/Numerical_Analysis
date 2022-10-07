function [L,U,P]=my_plu_Brayan_Barajas(A)
[m,n]=size(A);
d=ones(m,1);
L=zeros(m,n);
U=A;
P=diag(d);
for i=1:n
    if U(i,i)==0
        for z=i+1:m
            if U(z,i)~=0
                U([i z],:)=U([z i],:);
                P([i z],:)=P([z i],:);
                L([i z],:)=L([z i],:);
                break;
            end
        end
    end
    for j=i+1:m
        mult=U(j,i)/U(i,i);
        L(j,i)=mult;
        U(j,:)=U(j,:)-mult*U(i,:);
    end
    
end
L=L+diag(d);

end