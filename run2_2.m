%Importing data from png file.

a22=imread('Run2.2-100Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=150;
BTM_ROW=300;

MIN_TEMP=14;
MAX_TEMP=24;

b22=rgb2gray(a22);
c22=(double(b22)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c22(240,:));
d22=c22(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
f22=mean(d22);
plot(f22);
