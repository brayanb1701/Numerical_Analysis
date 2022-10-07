f=@(x) x.^3-7;
[a,b]=my_finding_interval_brayan_barajas(f);
my_visual_bisection_function_brayan_barajas(f,a,b,10,0.001)