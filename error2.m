run2_1
run2_2
run2_3

A2=[f21;f22;f23];
plot(mean(A2));
hold on
A2(1:10:end)=NaN;
A2(2:10:end)=NaN;
A2(3:10:end)=NaN;
A2(4:10:end)=NaN;
A2(5:10:end)=NaN;
A2(6:10:end)=NaN;
A2(7:10:end)=NaN;
B2=mean(A2);
C2=2*std(A2);
errorbar(B2,C2)
xlabel('Distance across airfoil')
ylabel('Temperature C')
title('Repeatability  for Run 2 at 100Pa')
