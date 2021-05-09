
% this program is to determine the leading behaviour of gamma(x)
 
% for x>>1
x=1:0.1:200;
i=1:1:size(x');
y=Gamma1(x');
figure;
plot(x,y,'black--');
legend('x>>1');
xlabel('x')
ylabel('Gamma(x)')
 
 
% for x<<1
x=1:-0.02:0;
i=1:1:size(x');
y=Gamma1(x');
figure;
plot(x,y,'black--');
legend('x>>1');
xlabel('x')
ylabel('Gamma(x)')
