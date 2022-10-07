format long
f=@(t) 10*exp(-t/10)*sin(2*t);
[L1,n1]=difflim(f,1.2,10e-13)
