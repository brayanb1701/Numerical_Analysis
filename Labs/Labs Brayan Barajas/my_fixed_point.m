function my_fixed_point(p0, ni)
for x=1:ni
    y = -4+4*p0-((p0.^2)/2);
    p=y;
    p0=p;
    disp(['Iteraci�n ',num2str(x),': '])
    disp(p)
end