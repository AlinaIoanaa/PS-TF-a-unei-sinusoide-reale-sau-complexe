clc ; 
clear all ; 
close all ;

N = 200 ;
n = 0 : N - 1 ;

omega = -pi : 0.05 : pi ;
omega0 = pi / 8 ;

e = randn( 1, N ) ;                      
x = cos( omega0 * n ) ;                 

% Amplitudini
a1 = 0.1 ;
a2 = 1 ;
a3 = 5 ;
a4 = 7 ;
a5 = 14 ;

% Corelatii
rx = xcorr( x, 'biased' ) ; 
rv1 = xcorr( a1 * e, 'biased' ) ;
rv2 = xcorr( a2 * e, 'biased' ) ;
rv3 = xcorr( a3 * e, 'biased' ) ;
rv4 = xcorr( a4 * e, 'biased' ) ;
rv5 = xcorr( a5 * e, 'biased' ) ;

SNR1 = abs( rx ./ rv1 ) ;
figure
subplot( 2, 1, 1 ) ;
plot( SNR1 );
title( 'SNR amplitudine 0.1' ) ;
subplot( 2, 1, 2 ) ;
plot( 20 * log( SNR1 ) ) ;
title( 'dB' ) ;


SNR2 = abs( rx ./ rv2 ) ;
figure
subplot( 2, 1, 1 ) ;
plot( SNR2 );
title( 'SNR amplitudine 1' ) ;
subplot( 2, 1, 2 ) ;
plot( 20 * log( SNR2 ) ) ;
title( 'dB' ) ;


SNR3 = abs( rx ./ rv3 ) ;
figure
subplot( 2, 1, 1 ) ;
plot( SNR3 );
title( 'SNR amplitudine 1.5' ) ;
subplot( 2, 1, 2 ) ;
plot( 20 * log( SNR3 ) ) ;
title( 'dB' ) ;


SNR4 = abs( rx ./ rv4 ) ;
figure
subplot( 2, 1, 1 ) ;
plot( SNR4 );
title( 'SNR amplitudine 2' ) ;
subplot( 2, 1, 2 ) ;
plot( 20 * log( SNR4 ) ) ;
title( 'dB' ) ;


SNR5 = abs( rx ./ rv5 ) ;
figure
subplot( 2, 1, 1 ) ;
plot( SNR5 );
title( 'SNR amplitudine 3' ) ;
subplot( 2, 1, 2 ) ;
plot( 20 * log( SNR5 ) ) ;
title( 'dB' ) ;
