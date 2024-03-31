t = 0:0.001:1;
f = 5;
ctSignal = sin(2*%pi*f*t);
plot(t,ctSignal,'b');

Ts_low = 0.1;
t_low =0:Ts_low:1;
lowSampled = sin(2*%pi*f*t_low);
plot(t_low,lowSampled,'r');

Ts_high = 0.01;
t_high =0:Ts_high:1;
highSampled = sin(2*%pi*f*t_high);
plot(t_high,highSampled,'g');

