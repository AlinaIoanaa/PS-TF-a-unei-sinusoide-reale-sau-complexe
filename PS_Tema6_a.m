clc ; 
clear all ; 
close all ;

N = 200 ;
n = 0 : N - 1 ;

omega0 = pi / 8 ;

e = randn( 1, N ) ;                         % zgomot alb

x = cos( omega0 * n ) + e ;                 % functia
plot( n, x ) ;