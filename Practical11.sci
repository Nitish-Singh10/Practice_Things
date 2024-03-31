n = input ( 'Enter number of points for frequency response n= ' ) ;
w =0:2* %pi / n :2* %pi ;
h = zeros (1 , length ( w ) ) ;
for x =1: length (w )
h ( x ) =1/(1 -0.9* exp( - %i * w ( x ) )) ;
end
h1 =abs( h ) ; // magnitude of transfer function
h2 =atan ( imag ( h) ,real ( h ) ) ; // phase of the transfer function

// plot the magnitude spectrum
subplot (2 ,1 ,1) ;
plot (w , h1 ) ;
xlabel ( ' frequency w' ) ;

ylabel ( ' amplitude' ) ;
title ( ' magnitude response of system H(w) ' ) ;

// plotting the phase spectrum
subplot (2 ,1 ,2) ;
plot (w , h2 ) ;
xlabel ( ' frequency w' ) ;
ylabel ( ' phase angle ' ) ;
title ( ' phase response of system H(w)' ) ;
