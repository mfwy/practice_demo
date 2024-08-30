I1=imread('5.png');
I2=imread('7.png');

pt1=detectSURFFeatures(I1);
pt2=detectSURFFeatures(I2);
f1=pt1.selectStrongest(200);
f2=pt2.selectStrongest(200);

[features1,valid1]=extractFeatures(I1,f1);
[features2,valid2]=extractFeatures(I2,f2);

[indexPair,matchmetric]=matchFeatures(features1,features2);
% dist=(norm(features1(6,:)-features2(11,:)));
% 
% 
% Loc1=f1.Location;
% Loc2=f2.Location;
% NN=8;
% Stars=zeros(NN,2,200);
% M=zeros(NN-1,1,200);
% 
% for i=1:length(f1)
%     center_pt=Loc1(i,:);
%     
%     [IdxNN, pointsDist] = knnsearch(pt1.Location,center_pt, 'K', 5, 'NSMethod', 'kdtree');
%     
%     Stars(:,:,i)=[center_pt;pt1.Location(IdxNN,:)];
% end
% [IdxNN, pointsDist] = knnsearch(pt1.Location,f1.Location, 'K', NN, 'NSMethod', 'kdtree');
% tic;
% for i=1:length(f1)
%     Stars(:,:,i)=pt1.Location(IdxNN(i,:),:);
%     D=pt1.Location(IdxNN(i,2:end),:)'-repmat(f1.Location(i,:)',1,NN-1);
%     Cov=D'*D;
%     M(:,:,i)=(inv(Cov)*eye(NN-1,1))/(eye(1,NN-1)*inv(Cov)*eye(NN-1,1));
% end
% t=toc;
% 
% pointTracker = vision.PointTracker('NumPyramidLevels', 5, 'MaxBidirectionalError', 3);
%  
% for k=1:length(f1)
%     initialize(pointTracker,Stars(:,:,k),I1);
%     [trackedStar(:,:,k), trackedStarValidity(:,:,k)]=pointTracker(I2);
%     release(pointTracker);
% end








% cnt=1;
% tic
% while ~isempty(f1Loc)
%     center_pt=f1Loc(1,:);
%     f1Loc(1,:)=[];
%     [IdxNN, pointsDist] = knnsearch(f1Loc(1:end,:),center_pt, 'K', 4, 'NSMethod', 'kdtree');
%     star=[center_pt;f1Loc(IdxNN,:)];
%     f1Loc(IdxNN,:)=[];
%     Stars(:,:,cnt)=star;
%     cnt=cnt+1;
%     
% end
% 
% time=toc;
% for k=1:cnt-1
%     initialize(pointTracker,Stars(:,:,k),I1);
%     [trackedStar(:,:,k), trackedStarValidity(:,:,k)]=pointTracker(I2);
%     release(pointTracker);
% end

% figure
% imshow(I1);
% hold on;
% plot(pt1,'ShowScale',false);
% for i=1:200
%     plot_star(Stars(:,:,i));
% end
% % 
% figure
% imshow(I2);
% hold on;
% plot(pt2,'ShowScale',false);
% for i=1:200
%     thres=norm(trackedStar(2:end,:,i)'*M(:,:,i)-Stars(1,:,i)');
%     if thres<1 
%         plot_star(trackedStar(:,:,i));
%     end
%     
% end
% % 
% figure
% imshow(I1);
% hold on;
% plot(f1,'ShowScale',false);
% 
% figure
% imshow(I2);
% hold on;
% plot(f2,'ShowScale',false);
% for i=1:cnt-1
%     plot_star(trackedStar(:,:,i));
% end
% initialize(pointTracker,f1.Location,I1);
% [trackedPoints, trackedPointsValidity] = step(pointTracker,I2);
% figure
% showMatchedFeatures(I1,I2,f1,trackedPoints,'montage');

