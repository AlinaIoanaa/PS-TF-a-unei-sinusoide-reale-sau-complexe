clc ;
clear all ;
close all ;

N = 50 ;
n = 0 : N - 1 ;                                                                                       % suport

omega = -pi : 0.05 : pi ;
omega0 = pi / 8 ;

j = sqrt( -1 ) ;                                                                                      % coeficient complex

x = exp( j * omega0 * n ) ;

X1 = abs( x * exp( -j * n' * omega ) ) ;          
%Calcul Transformata Fourier

subplot( 2, 1, 1 ) ;
plot( omega, X1 ) ; 
title( 'Spectrul TF' ) ;
%Amplitudinea,adica spectrul TF

Xomega = ( exp( -j * ( omega - omega0 ) * N / 2 ) ./ exp( -j *  ( omega - omega0 ) / 2 ) ) .* ( sin( ( omega - omega0 ) * N ) / 2 ) ./ ( sin( ( omega - omega0 ) / 2 ) ) ;  % |Xomega| -> spectrul

subplot( 2, 1, 2 ) ;
plot( omega, abs( Xomega ) ) ;
title( 'Graficul expresiei' ) ; 

maxim = max( Xomega )
% maximul tinde catre N, dar nu este egal cu el 