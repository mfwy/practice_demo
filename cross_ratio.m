A=Stars(2:6,:,10)-repmat(Stars(1,:,10),5,1);
B=trackedStar(2:6,:,10)-repmat(trackedStar(1,:,10),5,1);
A=A(2:5,:);
B=B(2:5,:);
% A([2 3],:)=A([3 2],:);
% B([2 3],:)=B([3 2],:);
% for i=1:3
%     angleA(i)=acos(A(i,:)*A(i+1,:)'/(norm(A(i,:))*norm(A(i+1,:))));
%     angleB(i)=acos(B(i,:)*B(i+1,:)'/(norm(B(i,:))*norm(B(i+1,:))));
% end
% rateA=sin(angleA(1)-angleA(2))*sin(angleA(3))/(sin(angleA(1))*sin(angleA(3)));%+angleA(2)
% rateB=sin(angleB(1)-angleB(2))*sin(angleB(3))/(sin(angleB(1))*sin(angleB(3)));%+angleB(2)

for i=1:4
    angleA(i)=atan2(A(i,2),A(i,1));
    angleB(i)=atan2(B(i,2),B(i,1));
end
angleA=sort(angleA);
angleB=sort(angleB);


theta1=abs(angleA(2)-angleA(1));
theta2=abs(angleA(3)-angleA(2));
theta3=abs(angleA(4)-angleA(3));
rateA=sin(theta1)*sin(theta3)/(sin(theta1+theta2)*sin(theta3+theta2));

theta1=abs(angleB(2)-angleB(1));
theta2=abs(angleB(3)-angleB(2));
theta3=abs(angleB(4)-angleB(3));
rateB=sin(theta1)*sin(theta3)/(sin(theta1+theta2)*sin(theta3+theta2));

