clc ;
clear all ;
close all ;

N = 100 ;
n = 0 : N - 1 ;                                        % suport     

omega = -pi : 0.05 : pi ;
omega0 = pi / 8 ;

phi = pi / 9 ;

j = sqrt( -1 ) ;                                       % coeficient complex

alfa = omega0 * n + phi ;                              % x[n] = cos( alfa )
x = 1 / 2 * ( exp ( j * alfa ) + exp( -j * alfa ) ) ;  % Euler

X = abs( x * exp( -j * n' * omega ) ) ;

figure
plot( omega, X ) ;
title( 'Spectrul, in functie de formula lui Euler( 2, b )' ) ;