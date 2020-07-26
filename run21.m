%Importing data from png file.

a2=imread('Run2.1-100Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=160;
BTM_ROW=284;

MIN_TEMP=14;
MAX_TEMP=24;

b2=rgb2gray(a2);
c2=(double(b2)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c2(240,:));
d2=c2(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
run_2=mean(d2);
plot(run_2);