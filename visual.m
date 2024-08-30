A=imread('14.png');
% imshow(A);
% B=imrotate(A,45);
% B=fliplr(A);
B=imread('15.png');
% imshow(B);
p1=detectSURFFeatures(A);
p2=detectSURFFeatures(B);
[feature1,valid1]=extractFeatures(A,p1);
[feature2,valid2]=extractFeatures(B,p2);
index=matchFeatures(feature1,feature2);

figure
imshow(A);
hold on
plot(p1.Location(:,1),p1.Location(:,2),'or');

figure
imshow(B);
hold on
plot(p2.Location(:,1),p2.Location(:,2),'sb');

m1=valid1(index(:,1));
m2=valid2(index(:,2));
figure
showMatchedFeatures(A,B,m1,m2,'montage');