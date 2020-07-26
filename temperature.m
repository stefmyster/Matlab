%Importing data from png file.

a=imread('Run3.1-150Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=150;
BTM_ROW=300;

MIN_TEMP=14;
MAX_TEMP=24;

b=rgb2gray(a);
c=(double(b)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c(240,:));
d=c(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
f=mean(d);
plot(f);


%extract laminar region of f.
g=f(39:290);
plot(g);

%plot the temperature so the graph starts at 0.
T=g;
TminusT0=T-T(1);
plot(TminusT0);


%to convert the x-axis to a dimension use paint to get columns.
%leading edge=39, trailing edge=601.
x=linspace(0,0.865,length(TminusT0));
%just add T0 back into the equation to shift the y-value back to normal.
plot(x,TminusT0);
xlabel('Chord Length(m)')
ylabel('Temperature(C)')
title('Run2 at 100Pa')

%curve fit data using cftool.
% cftool

%plot a range of runs and discuss why there might be any differences.














