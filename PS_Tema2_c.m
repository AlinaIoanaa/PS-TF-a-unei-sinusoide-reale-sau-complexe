clc ;
clear all ;
close all ;

N = 50 ;
n = 0 : N - 1 ;

j = sqrt( -1 ) ;

omega0 = pi / 8 ;

% valori diferite ale lui phi
phi1 = pi ;
phi2 = pi / 2 ;
phi3 = pi / 4 ;
phi4 = 3 * pi / 5 ;
phi5 = 4 * pi / 9 ;
phi6 = 4 * pi ;

omega = -pi : 0.05 : pi ;

% functii pentru fiecare phi
x1 = cos( omega0 * n + phi1 ) ;
x2 = cos( omega0 * n + phi2 ) ;
x3 = cos( omega0 * n + phi3 ) ;
x4 = cos( omega0 * n + phi4 ) ;
x5 = cos( omega0 * n + phi5 ) ;
x6 = cos( omega0 * n + phi6 ) ;

X1 = abs( x1 * exp( -j * n' * omega ) ) ;
X2 = abs( x2 * exp( -j * n' * omega ) ) ;
X3 = abs( x3 * exp( -j * n' * omega ) ) ;
X4 = abs( x4 * exp( -j * n' * omega ) ) ;
X5 = abs( x5 * exp( -j * n' * omega ) ) ;
X6 = abs( x6 * exp( -j * n' * omega ) ) ;

%X1
subplot( 2, 3, 1 ) ;
plot( omega, X1 ) ;
title( 'X1' ) ;

%X2
subplot( 2, 3, 2 ) ;
plot( omega, X2 ) ;
title( 'X2' ) ;

%X3
subplot( 2, 3, 3 ) ;
plot( omega, X3 ) ;
title( 'X3' ) ;

%X4
subplot( 2, 3, 4 ) ;
plot( omega, X4 ) ;
title( 'X4' ) ;

%X5
subplot( 2, 3, 5 ) ;
plot( omega, X5 ) ;
title( 'X5' ) ;

%X6
subplot( 2, 3, 6 ) ;
plot( omega, X6 ) ;
title( 'X6' ) ;

% toeretic nu se intampla nimic, pentru ca suntem intre ( 0, 2 * pi )
