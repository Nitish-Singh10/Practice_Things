x = input('Enter input sequence (n) : ')   // x =[1 2 3 1 ]
m = length(x) ;
xl = input('Enter lower index of input sequence : ')   // 0
xh = xl+m-1;
n = xl:1:xh;
subplot (3,1,1);
a = gca();
a.x_location ="origin";
a.y_location ="origin";
plot2d3('gnn',n,x);
title('Input sequence x[n]');
xlabel('Samples n');
ylabel('Amplitude');
h = input('Enter impulse response sequence h[n] : ');    // h =[1 2 1 −1]
l = length(h);
hl = input('Enter the lower index of impulse response sequence : ') ; //−1
hh = hl+l-1;
g = hl:1:hh;
subplot(3,1,2);
a = gca();
a.x_location ="origin";
a.y_location ="origin";
plot2d3('gnn',n,x);
title('Impulse response sequence h[n]');
xlabel('Samples n');
ylabel('Amplitude');
nx = xl+hl;   // r a n g e o f k
nh = xh+hh;   // r a n g e o f n
p = m+l-1;
x =[x,zeros(1,p-l)];
h =[h,zeros(1,p-m)];  // d f t − i d f t
XK = fft(x,-1); // DFT o f x
HK = fft(h,-1); // DFT o f h
YK = XK.*HK;
yn = fft(YK,1); 
disp('Linear Convolution by DFT-IDFT method is y(n) : ');
disp(real(yn));
r = nx:nh;
subplot(3,1,3);
a = gca();
a.x_location ="origin";
a.y_location ="origin";
plot2d3('gnn',r,yn);
title('Output Response of Linear Convolution by DFT−IDFT method y[n] : ');
xlabel('Samples n');
ylabel('Amplitude');
