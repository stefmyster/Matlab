a32=imread('Run3.2-150Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=150;
BTM_ROW=300;

MIN_TEMP=14;
MAX_TEMP=24;

b32=rgb2gray(a32);
c32=(double(b32)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c32(240,:));
d32=c32(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
f_32=mean(d32);
plot(f_32);
