clc ;
close all ;
clear all ; 

N = 300 ;
n = 0 : N - 1 ;

omega = -pi : 0.05 : pi ;
j = sqrt( -1 ) ;

omega1 = pi / 3 ;
omega2 = omega1 + 0.01 ;
% omega2 = omega1 - 0.01 ;

x = cos( omega1 * n ) + cos( omega2 * n ) ;
X = abs( x * exp( -j * n' * omega ) ) ;

subplot( 2, 1, 1 ) ;
plot( n, x ) ;
title( 'Grafic semnal' ) ;

subplot( 2, 1, 2 ) ;
plot( omega, X ) ;
title( 'Grafic spectru' ) ;