%Importing data from png file.

a3=imread('Run3.1-150Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=144;
BTM_ROW=284;

MIN_TEMP=14;
MAX_TEMP=24;

b3=rgb2gray(a3);
c3=(double(b3)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c3(240,:));
d3=c3(TOP_ROW:BTM_ROW,:);
%imshow(d*255);
%average out the data for the temperature to even out the noise.
f_31=mean(d3);
plot(f_31);