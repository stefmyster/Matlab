%Importing data from png file.

a43=imread('Run4.3-200Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=150;
BTM_ROW=300;

MIN_TEMP=14;
MAX_TEMP=24;

b43=rgb2gray(a43);
c43=(double(b43)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c43(240,:));
d43=c43(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
f43=mean(d43);
plot(f43);
