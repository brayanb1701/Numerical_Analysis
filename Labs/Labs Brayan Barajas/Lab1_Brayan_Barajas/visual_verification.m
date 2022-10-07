function visual_verification(x)
g = -4+4*x-((x.^2)/2);
y = x;
plot(x,y)
hold on
plot(x,g)
grid on 
title('Visual Verification')


end
