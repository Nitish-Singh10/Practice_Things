n = 0:10;
a = 2;
b = 3;
x1 = sin(2*%pi*0.1*n);
x2 = cos(2*%pi*0.5*n);
x = a.*x1+b.*x2;
y = 0.5*x;
y1 = 0.5*x1;
y2 = 0.5*x2;
yt = a.*y1+b.*y2;
d=y-yt;
disp('Output of System y(n)=0.5x(n)is: ');
if(d==0)
    disp('System is Linear');
else
    disp('System is Non-Linear');
end

n = 0:10;
a = 2;
b = 3;
x1 = sin(2*%pi*0.1*n);
x2 = cos(2*%pi*0.5*n);
x = a.*x1+b.*x2;
y = sqrt(x);
y1 = sqrt(x1);
y2 = sqrt(x2);
yt = a.*y1+b.*y2;
d=y-yt;
disp('Output of System y(n)=0.5x(n)is: ');
if(d==0)
    disp('System is Linear');
else
    disp('System is Non-Linear');
end
