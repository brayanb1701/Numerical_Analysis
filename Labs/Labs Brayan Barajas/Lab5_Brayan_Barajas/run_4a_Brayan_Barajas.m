A=[1 -1 -1
    0 1 -2
    10 15 40];
b=[0; 0; 300];

[L0,U0]=my_lu_Brayan_Barajas(A)
Y0=L0\b
x0=U0\Y0

[L1,U1,P1]=my_plu_Brayan_Barajas(A)
Y1=L1\(P1*b)
x1=U1\Y1

[L2,U2,P2]=lu(A)
Y2=L2\(P2*b)
x2=U2\Y2