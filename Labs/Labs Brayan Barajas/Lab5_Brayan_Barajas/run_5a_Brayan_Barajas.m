A=[1 -1 -1 0 0
    220 330 0 0 0
    0 330 -470 -100 0
    0 0 1 -1 1
    220 0 470 0 -150
    ];
b=[0; 10; 0; 0; 2];

[L0,U0]=my_lu_Brayan_Barajas(A)
Y0=L0\b
x0=U0\Y0

[L1,U1,P1]=my_plu_Brayan_Barajas(A)
Y1=L1\(P1*b)
x1=U1\Y1

[L2,U2,P2]=lu(A)
Y2=L2\(P2*b)
x2=U2\Y2