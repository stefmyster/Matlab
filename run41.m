%Importing data from png file.

a4=imread('Run4.1-200Pa.png');

%Converting grayscale to temperature.
%select the centre section of the image.
TOP_ROW=160;
BTM_ROW=284;

MIN_TEMP=14;
MAX_TEMP=24;

b4=rgb2gray(a4);
c4=(double(b4)/255)*(MAX_TEMP-MIN_TEMP)+MIN_TEMP;

%plot half-way in the image vector.
plot(c4(240,:));
d4=c4(TOP_ROW:BTM_ROW,:);
%imshow(d*255);

%average out the data for the temperature to even out the noise.
run_4=mean(d4);
plot(run_4);