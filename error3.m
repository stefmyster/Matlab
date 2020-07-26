run31
run32
run33

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



