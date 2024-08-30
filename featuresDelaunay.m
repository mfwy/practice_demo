clc;clear all;
close all;
%%
I0=imread('5.png');
I1=imread('7.png');
I2=imread('6.png');
% I1=imread('frame007443.png');
% I2=imread('frame007495.png');
% I1=rgb2gray(I1);
% I2=rgb2gray(I2);

% w=fspecial('laplacian');
% t1=imfilter(I1,w,'replicate');
% t2=imfilter(I2,w,'replicate');
% I1=I1-t1;
% I2=I2-t2;
% I1=histeq(I1);
% I2=histeq(I2);
%%
fList1=detectSURFFeatures(I1);
fList2=detectSURFFeatures(I2);
fList0=detectSURFFeatures(I0);
% fList1=fList1.selectStrongest(200);
% fList2=fList2.selectStrongest(200);
% pL1=fList1.Location;
% pL2=fList2.Location;
[Des0,vaild0]=extractFeatures(I0,fList0);
[Des1,valid1]=extractFeatures(I1,fList1);
[Des2,vaild2]=extractFeatures(I2,fList2);
[index0,DIST0]=matchFeatures(Des0,Des1);
[index,DIST]=matchFeatures(Des1,Des2);

% matchedPoints1 = fList1(index(:,1),:);
% matchedPoints2 = fList2(index(:,2),:);
% pL1=matchedPoints1.Location;
% pL2=matchedPoints2.Location;
% arr1=(fList1.Scale>5.0);
% fList1(arr1==0)=[];
% arr2=(fList2.Scale>3.0);
% fList2(arr2==0)=[];
% tic;
% tri=delaunay(double(pL1));
% tri2=delaunay(double(pL2));
% cost=toc;
% figure(1)
% imshow(I1); hold on;
% plot(fList1);
% % plot(pL1(:,1),pL1(:,2),'o');
% figure(2)
% imshow(I2); hold on;
% plot(fList2);
% % plot(pL2(:,1),pL2(:,2),'o');
% set(gca,'YDir','reverse'); 

% figure(3)
% hold on
% plot(pL1(:,1), pL1(:,2), 'r*');
% for ii = 1:size(tri, 1)
%     plot( [pL1(tri(ii,1),1) pL1(tri(ii,2),1)], [pL1(tri(ii,1),2) pL1(tri(ii,2),2)], 'b' )
%     plot( [pL1(tri(ii,2),1) pL1(tri(ii,3),1)], [pL1(tri(ii,2),2) pL1(tri(ii,3),2)], 'b' )
%     plot( [pL1(tri(ii,1),1) pL1(tri(ii,3),1)], [pL1(tri(ii,1),2) pL1(tri(ii,3),2)], 'b' )
% end
% set(gca, 'box', 'on')
% set(gca,'YDir','reverse'); 
% figure(4)
% hold on
% plot(pL2(:,1), pL2(:,2), 'r*');
% for ii = 1:size(tri2, 1)
%     plot( [pL2(tri2(ii,1),1) pL2(tri2(ii,2),1)], [pL2(tri2(ii,1),2) pL2(tri2(ii,2),2)], 'b' )
%     plot( [pL2(tri2(ii,2),1) pL2(tri2(ii,3),1)], [pL2(tri2(ii,2),2) pL2(tri2(ii,3),2)], 'b' )
%     plot( [pL2(tri2(ii,1),1) pL2(tri2(ii,3),1)], [pL2(tri2(ii,1),2) pL2(tri2(ii,3),2)], 'b' )
% end
% set(gca, 'box', 'on')
% set(gca,'YDir','reverse'); 
