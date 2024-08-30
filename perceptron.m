%load labeled data
D=[3,3,1;4,3,1;1,1,-1]';
X=D(1:2,:);
Y=D(3,:);
%train data
w=zeros(1,2);
b=0;
eta=1;
iter=20;

for i=1:iter
    for j=1:length(Y)
        x=X(:,j);
        y=Y(j);
        if y*(w*x+b)<=0   
            w=w+(eta*y*x)';
            b=b+eta*y;
        end
    end
end
m=linspace(0,5,50);
n=-b-w(1)/w(2)*m;
figure
hold on
plot(m,n,'--');
plot(X(1,:),X(2,:),'r*');
% axis([0,5,0,5]);
