run4_1
run4_2
run4_3

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
title('Repeatability for Run 4 at 200Pa')
hold off

