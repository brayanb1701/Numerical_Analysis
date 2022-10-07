A=[1 2 -3 4
    4 8 12 -8
    2 3 2 1
    -3 -1 1 -4];
b=[3; 60; 1; 5];

[L0,U0]=my_lu_Brayan_Barajas(A)

[L1,U1,P1]=my_plu_Brayan_Barajas(A)
Y1=L1\(P1*b)
x1=U1\Y1

[L2,U2,P2]=lu(A)
Y2=L2\(P2*b)
x2=U2\Y2