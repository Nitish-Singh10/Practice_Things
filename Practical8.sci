x=input('Enter the input sequence=')
m=length(x);
x1=input('Enter the lower index of input sequence=')
xh=x1+m-1;
n=x1:1:xh;
subplot(3,1,1);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,x);
title('Input Sequence x[n]');
xlabel('Samples n');
ylabel('Amplitude');

h=input('Enter the impulse response sequence=');
l=length(h);
h1=input('Enter the lower index of impulse response sequence=');
hh=h1+l-1;
g=h1:1:hh;
subplot(3,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',g,h);
title('Impulse Response Sequence h[n]');
xlabel('Samples n');
ylabel('Amplitude');

N=max(m,1);
p=m-1;
if(p>=0) then
    h=[h,zeros(1,p)];
else
    x=[x,zeros(1,-p)];
end
for i=1:N
    y(i)=0;
    for j=1:N
        k=i-j+1;
        if (k<=0)
            k=N+k;
        end
        y(i)=y(i)+x(j)*h(k);
    end
end
disp('Circular convolution by equation is y[n]:') ;
disp(y);
nx=x1+h1;
r=nx:length(y)-1;
subplot(3,1,3);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',r,y);
title('Output Response Sequence of Circular Convolution y[n] using Basic Equation');
xlabel('Samples n');
ylabel('Amplitude');
