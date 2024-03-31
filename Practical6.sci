N=input('Enter the value of N=\n');
x=input('Enter  the input sequence x(n)=');
subplot(3,2,1);
a=gca();
a.foreground = 5;
a.font_color=5;
a.font_style=5;
plot2d3(x);
title('Input Sequence');
xlabel('Samples n');
ylabel('Amplitude');
for k=1:N
    y(k)=0;
    for n=1:N
        y(k)=y(k)+x(n).*exp(-%i*2*%pi*(k-1)*(n-1)/N)
        ;
        A=real(y);
        B=imag(y);
    end
end
mag=abs(y);
x1 = atan ( imag ( y) ,real ( y ) ) ;
phase = x1 *(180/ %pi ) ;
disp('The output DFT sequence is:') ;
disp(y);
subplot (3 ,2 ,2) ;
a=gca () ;
a.foreground = 5;
a.font_color = 5;
a.font_style = 5;
plot2d3 ( y );
title('Output DFT sequence');
xlabel('Samples n');
ylabel('Amplitude');
//Real Value
disp('The Resultant Real value is:') ;
disp(A);
subplot(3,2,3);
a=gca();
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3(A);
title('Real Value');
xlabel('Samples n');
ylabel('Amplitude');

disp('THe resultant imaginary value is:');
disp(B);
subplot(3,2,4);
a=gca();
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3(B);
title('Imaginary value');
xlabel('Samples n');
ylabel('Amplitude');

disp('The Magnitude response is:');
disp(mag);
subplot(3,2,5);
a=gca();
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3(mag);
title('Magnitude Response');
xlabel('Samples n ');
ylabel('Amplitude ');

disp('The phase response is:');
disp(phase);
subplot(3,2,6);
a=gca();
a.foreground=5;
a.font_color=5;
a.font_style=5;
plot2d3(phase);
title('Phase Response');
xlabel('Samples n');
ylabel('Phase');
