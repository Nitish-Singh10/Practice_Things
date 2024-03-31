L = 4;
n = -L:L;
x = [zeros(1,L),1,zeros(1,L)];
b = gca();
b.y_location = "middle";
subplot(221);
plot2d3('gnn',n,x)
xtitle('Graphical Representation of Unit Sample Sequence','x','X[n]');

L = 4;
n = -L:L;
x = [zeros(1,L),ones(1,L+1)];
b = gca();
b.y_location = "middle";
plot2d3('gnn',n,x);
xtitle('Graphical Representation of Unit Step Signal','x','X[n]');

L = 4;
n = -L:L;
x = [zeros(1,L),0:L];
b = gca();
b.y_location = "middle";
plot2d3('gnn',n,x);
xtitle('Graphical Representation of Unit Ramp Signal','x','X[n]');

m = 0.5;
n = 0:10;
x = (m)^n;
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot2d3('gnn',n,x);
xtitle('Graphical Representation of Exponentially Decreasing Signal','x','X[n]');

m = 1.5;
n = 0:10;
x = (m)^n;
a = gca();
plot2d3('gnn',n,x);
xtitle('Graphical Representation of Exponentially Increasing Signal','x','X[n]');

t = 0:0.04:1;
x = sin(2*%pi*t);
plot2d3(t,x);
xtitle('Sine Wavs','Sample n','Amplitude')
