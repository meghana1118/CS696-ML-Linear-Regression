clc;
close all;
%training data
x=[2 2.5 3 3.5 4 4.5 5 5.5 6];
y=[5.1 6.1 6.9 7.8 9.2 9.9 11.5 12 12.8];
a=0.01; %learning rate
m=9;
i=1:9;
t0=0;   
t1=1;
hyp=t0+t1*x(i);
cf=zeros(1500,1);
for num=1:1500
   hyp=t0+t1*x(i);
cf(num)=(0.5*m).*sum((hyp(i)-y(i)).^2);         %cost function
%partial diff
jt0=sum(hyp(i)-y(i));
jt1=sum((hyp(i)-y(i)).*x(i));
    t0=t0-a*jt0;
     t1=t1-a*jt1;
  plot(0:49,cf(1:50))   
end 
t0
t1
xlabel('Number of iterations')
ylabel('Cost J')




