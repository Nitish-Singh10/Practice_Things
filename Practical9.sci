x=input('Enter the Input Sequence:')
m=length(x);
x1=input('Enter the lower index of input sequence:')
xh=x1+m-1;
n=x1:1:m-1;
subplot(3,1,1);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,x);
title('Input Sequence');
xlabel('Samples n');
ylabel('AMplitude');

h=input('Enter the Impulse response Sequence:')
l=length(h);
h1=input('Enter the lower index of impulse response sequence:');
hh=h1+l-1;
g=h1:1:hh;
subplot(3,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',g,h);
title('Impulse response Sequence h[n]');
xlabel('Samples n');
ylabel('AMplitude');

N=max(m,l);
p=m-l;
if(p>=0) then
    h=[h,zeros(1,p)];
else
    x=[x,zeros(1,-p)];
end
XK=fft(x,-1);
HK=fft(h,-1);
YK=XK.*HK;
y=ifft(YK);
disp('Circular convolution by DFT is y(n):')
disp(real(y));
nx=x1+h1;
r=nx:length(y)-1;
subplot(3,1,3);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',r,y);
title('Output response Sequence of Circular Convolution y[n] using DFT');
xlabel('Samples n');
ylabel('Amplitude');
