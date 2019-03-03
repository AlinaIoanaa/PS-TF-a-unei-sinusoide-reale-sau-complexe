clc ;
close all ;
clear all ; 

N = 300 ;
n = 0 : N - 1 ;

omega = -pi : 0.05 : pi ;
j = sqrt( -1 ) ;

omega1 = pi / 8 ;
omega2 = pi / 3 ;

%Amplitudini
A1 = 0.5 ;
A2 = 2.5 ;

x = A1 * cos( omega1 * n ) + A2 * cos( omega2 * n ) ;
X = abs( x * exp( -j * n' * omega ) ) ;

figure;
plot( omega, X ) ;
title('Graficul semnalului + amplitudini ( 3, c )' ) ;