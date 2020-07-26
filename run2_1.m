%Importing data from png file.

a21=imread('Group 3_Run2.1-100Pa');
%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=150;
BTM_ROW=300;

MIN_TEMP=14;
MAX_TEMP=24;

b21=rgb2gray(a21);
c21=(double(b21)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c21(240,:));
d21=c21(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
f21=mean(d21);
plot(f21);
