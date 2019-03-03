clc ; 
clear all ; 
close all ;

N = 200 ;
n = 0 : N - 1 ;

omega = -pi : 0.05 : pi ;
omega0 = pi / 8 ;

e = randn( 1, N ) ;                         % zgomot alb
x = cos( omega0 * n ) + e ;                 % functia

j = sqrt( -1 ) ;
X = abs( x * exp( -j * n' * omega ) ) ;
densitateSpectru = X .^ 2 / N ;

figure
% subplot( 2, 1, 1 ) ;
plot( omega, densitateSpectru ) ;
title( 'Densitatea de putere spectrala' ) ; 

% max( densitateSpectru ) 

% subplot( 2, 1, 2 ) ;
% plot( omega, 20 * log( densitateSpectru ) ) ;