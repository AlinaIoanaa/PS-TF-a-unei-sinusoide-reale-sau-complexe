clc ;
clear all ;
close all ;

N = 50 ;
n = 0 : N - 1 ;                             % suport                                                                 % suport

omega = -pi : 0.05 : pi ;
omega0 = pi / 8 ;

phi = pi / 4 ;
j = sqrt( -1 ) ;

x = cos( omega0 * n + phi ) ;
X = abs( x * exp( -j * n' * omega ) ) ;     % grila de frecvente [ -pi; pi ]

figure
plot( omega, X ) ;
title( 'Spectrul( 2, a )' ) ;