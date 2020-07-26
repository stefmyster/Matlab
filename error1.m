run11
Run12
run13
A1=[f11; f12; f13];
plot(mean(A1));
hold on
A1(1:10:end)=NaN;
A1(2:10:end)=NaN;
A1(3:10:end)=NaN;
A1(4:10:end)=NaN;
A1(5:10:end)=NaN;
A1(6:10:end)=NaN;
A1(7:10:end)=NaN;
B1=mean(A1);
C1=2*std(A1);
errorbar(B1,C1)
xlabel('Distance across airfoil')
ylabel('Temperature C')
title('Repeatability  for Run 1 at 50Pa')



