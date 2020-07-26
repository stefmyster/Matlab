%Importing data from png file.

a41=imread('Run4.1-200Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=150;
BTM_ROW=300;

MIN_TEMP=14;
MAX_TEMP=24;

b41=rgb2gray(a41);
c41=(double(b41)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c41(240,:));
d41=c41(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
f41=mean(d41);
plot(f41);
