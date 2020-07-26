%Importing data from png file.

a33=imread('Run3.3-150Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=144;
BTM_ROW=284;

MIN_TEMP=14;
MAX_TEMP=24;

b33=rgb2gray(a33);
c33=(double(b33)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c33(240,:));
d33=c33(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
f_33=mean(d33);
plot(f_33);