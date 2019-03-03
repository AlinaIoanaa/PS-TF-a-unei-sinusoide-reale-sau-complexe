clc ;
close all ;
clear all ; 

N = 300 ;
n = 0 : N - 1 ;

omega = -pi : 0.05 : pi ;
j = sqrt( -1 ) ;

omega1 = pi / 8 ;
% omega1 = pi / 3 ;
omega2 = pi / 3 ;

x = cos( omega1 * n ) + cos( omega2 * n  ) ;
X = abs( x * exp( -j * n' * omega ) ) ;

figure;
plot( omega, X ) ;
title('Graficul semnalului pe o grila de frecvente( 3, b )' ) ;

% Functia este reprezentata de doua cosinusuri, deci numarul de
% varfuri se dubleaza
% Da, iese graficul la care ne asteptam pentru ca e simetrica 