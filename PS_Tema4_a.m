clc ;
clear all ;
close all ;

x = load( 'sunspot.dat' ) ;

N = 300 ;
n = 0 : N - 1 ;

% Semnalul x pe toata durata
figure
subplot( 3, 1, 1 ) ;
plot( x( :, 2 ) ) ;
title( 'Semnal x pe toata durata' ) ;

omega = -pi : 0.05 : pi ;
X = abs( freqz( x( :, 2 ), 1, omega ) ) ;

subplot( 3, 1 , 2 ) ;
plot( omega, X ) ;
title( 'Spectru' ) ;
subplot( 3, 1, 3 ) ;
plot( omega, 20 * log( X ) ) ;
title( 'dB' ) ;

% Semnalul x pana la 100
figure
subplot( 3, 1, 1 ) ;
plot( x( 1 : 100 , 2 ) ) ;
title( 'Semnalul x pana la 100' ) ;

subplot( 3, 1, 2 ) ;
X2 = abs( freqz( x( 1 : 100, 2 ), 1, omega ) ) ;
plot( omega, X2 ) ;
title( 'Spectru' ) ;
subplot( 3, 1, 3 ) ;
plot( omega, 20 * log( X2 ) ) ;
title( 'dB' ) ;

% Semnalul x pana la 50
figure
subplot( 3, 1, 1 ) ;
plot( x( 1 : 50 , 2 ) ) ;
title( 'Semnalul x pana la 50' ) ;

subplot( 3, 1, 2 ) ;
X3 = abs( freqz( x( 1 : 50, 2 ), 1, omega ) ) ;
plot( omega, X3 ) ;
title( 'Spectru' ) ;
subplot( 3, 1, 3 ) ;
plot( omega, 20 * log( X3 ) ) ;
title( 'dB' ) ;
