clc ;
close all ;
clear all ; 

N = 150 ;
n = 0 : N - 1 ;

omega1 = pi / 8 ;
omega2 = pi / 3 ;

x = cos( omega1 * n ) + cos( omega2 * n  ) ;

figure;
plot( n, x ) ;
title('Graficul semnalului( 3, a )' ) ;

% T = 50
% k = 3