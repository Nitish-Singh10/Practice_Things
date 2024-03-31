x=input('Enter input sequence x(n)=') 
m=length(x);
xl=input('Enter the lower index of input sequence = ') 
xh=xl+m-1;
n=xl:1:xh;
subplot(3,1,1);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,x);
title('Input sequence [n]');
xlabel('Samples n');
ylabel('Amplitude');
h=input('Enter the Impulse response sequence h(n) = '); 
l=length(h);
hl=input('Enter lower index of Impulse response sequence ='); 
hh=hl+l -1;
g=hl:1:hh;
subplot(3,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',n,h);
title('Impulse response sequence [n]');
xlabel ('Samples n');
ylabel ('Amplitude');
nx=xl+hl ; 
nh=xh+hh ; 
x =[x,zeros(1,l)];
h =[h,zeros(1,m)];
y = zeros(1, m +l -1) 
for i = 1:m+l-1
    y(i) = 0;
    for j =1:m+l-1
        if(j<i+1)
            y(i) = y(i)+x(j)*h(i-j+1) ;
            end
    end
end
disp('Linear convolution using equation is y(n) :');
disp(y);
r = nx:nh ;
subplot(3 ,1 ,3) ;
a=gca() ;
a.x_location="origin";
a.y_location="origin";
plot2d3('gnn',r , y) ;
title('Output response sequence of linear convolution using equation y[n]');
xlabel('Samples n');
ylabel('Amplitude');
