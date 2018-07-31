clc;
close all;
%training data
 x1=[2 3 4 4 3 7 5 3 2]';
 x2=[70 30 80 20 50 10 50 90 20]';
%x2=[0.75 0.25 0.825 0.125 0.5 0  0.5 1 0.125]; scaled x2
y=[79.4 41.5 97.5 36.1 63.2 39.5 69.8 103.5 29.5]';%notscaled
t0=0;   
t1=1;
t2=1;
x=[ones(9,1) x];
cf=zeros(1500,1);
a=0.1; %learning rate
m=9;

for num=1:1500
hyp=t0+t1.*x1(i)+t2.*x2(i);
 cf(num) = (0.5/m) .* sum((hyp - y).*(hyp-y));         %cost function
%partial diff
jt=sum((hyp(i)-y(i)));
jt1=sum((hyp(i)-y(i)).*x1(i));
jt2=sum((hyp(i)-y(i)).*x2(i));
    t0=t0-((a/m)*sum(jt));
     t1=t1-((a/m)*sum(jt1.*x1(i)));
     t2=t2-((a/m)*sum(jt2.*x2(i)));
  plot(0:49,cf(1:50))   
 end 
xlabel('Number of iterations')
ylabel('Cost J')
t0
t1
t2