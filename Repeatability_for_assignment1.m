% open error1
% open error2
% open error3
% open error4
% 
% error1
% error2
% error3
% error4

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

A3=[f_31; f_32; f_33];
plot(mean(A3));
hold on
A3(1:10:end)=NaN;
A3(2:10:end)=NaN;
A3(3:10:end)=NaN;
A3(4:10:end)=NaN;
A3(5:10:end)=NaN;
A3(6:10:end)=NaN;
A3(7:10:end)=NaN;
B3=mean(A3);
C3=2*std(A3);
errorbar(B3,C3)
title('Repeatability  for Run 3 at 150Pa')

A4=[f41;f42;f43];
plot(mean(A4));
hold on
A4(1:10:end)=NaN;
A4(2:10:end)=NaN;
A4(3:10:end)=NaN;
A4(4:10:end)=NaN;
A4(5:10:end)=NaN;
A4(6:10:end)=NaN;
A4(7:10:end)=NaN;
B4=mean(A4);
C4=2*std(A4);
errorbar(B4,C4)
xlabel('Distance across airfoil')
ylabel('Temperature C')
title('Repeatability  for Run 4 at 200Pa')
hold off
legend('Run1','Run2','Run3','Run4')