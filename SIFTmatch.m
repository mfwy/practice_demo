I1=imread('image1.jpg');
I2=imread('image2.jpg');
IG1=rgb2gray(I1);
IG2=rgb2gray(I2);
p1=detectSURFFeatures(IG1);
p2=detectSURFFeatures(IG2);
f1=p1.selectStrongest(500);
f2=p2.selectStrongest(500);

[d1,~]=extractFeatures(IG1,f1);
[d2,~]=extractFeatures(IG2,f2);

[index,~]=matchFeatures(d1,d2);
matchedPoints1 = f1(index(:,1),:);
matchedPoints2 = f2(index(:,2),:);
showMatchedFeatures(I1,I2,matchedPoints1,matchedPoints2,'montage');
