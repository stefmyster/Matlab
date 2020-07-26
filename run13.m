%Importing data from png file.

a13=imread('Run1.3-50Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=150;
BTM_ROW=300;

MIN_TEMP=14;
MAX_TEMP=24;

b13=rgb2gray(a13);
c13=(double(b13)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c13(240,:));
d13=c13(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
f13=mean(d13);
plot(f13);
