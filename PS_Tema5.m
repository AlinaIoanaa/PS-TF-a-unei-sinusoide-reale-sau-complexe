clc ;
clear all ;
close all ;

% N1 
N1 = 300 ;
n1 = 0 : N1 - 1 ;

omega = -pi : 0.05 : pi ;
j = sqrt( -1 ) ;
e1 = randn( 1 , N1 ) ;                      %zgomot alb

X1 = abs( freqz( e1, 1, omega ) ) ; 
subplot( 4, 1, 1 ) ;
plot( omega, X1 .^ 2 / N1 ) ;               %trasare densitate spectrala
title(' N = 300 ') ;

% N2 
N2 = 400 ;
n2 = 0 : N2 - 1 ;

e2 = randn( 1 , N2 ) ;                      %zgomot alb

X2 = abs( freqz( e2, 1, omega ) ) ; 
subplot( 4, 1, 2 ) ;
plot( omega, X2 .^ 2 / N2 ) ;                %trasare densitate spectrala
title(' N = 400 ') ;

% N3 
N3 = 500 ;
n3 = 0 : N3 - 1 ;

e3 = randn( 1 , N3 ) ;                      %zgomot alb

X3 = abs( freqz( e3, 1, omega ) ) ; 
subplot( 4, 1, 3 ) ;
plot( omega, X3 .^ 2 / N3 ) ;               %trasare densitate spectrala
title(' N = 500 ') ;

% N4
N4 = 550 ;
n4 = 0 : N4 - 1 ;

e4 = randn( 1 , N4 ) ;                      %zgomot alb

X4 = abs( freqz( e4, 1, omega ) ) ; 
subplot( 4, 1, 4 ) ;
plot( omega, X4 .^ 2 / N4 ) ;               %trasare densitate spectrala
title(' N = 550 ') ;