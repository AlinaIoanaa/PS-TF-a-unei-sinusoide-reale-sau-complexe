clc ; 
clear all ; 
close all ;

% 1 
N = 50 ;
n = 0 : N - 1 ;

omega = -pi : 0.05 : pi ;
omega0 = pi / 8 ;

a1 = 0.1 ;
e1 = randn( 1, N ) ;                                             % zgomot alb
x1 = cos( omega0 * n ) + a1 * e1 ;                               % functia

j = sqrt( -1 ) ;
F1 = abs( x1 * exp( -j * n' * omega ) ) ;
densitateSpectru = F1 .^ 2 / N ;

figure
plot( omega, densitateSpectru ) ;
title( 'Densitatea de putere spectrala - amplitudine 0.1' ) ; 

% 2 
a2 = 0.5 ;
e2 = randn( 1, N ) ;                             
x2 = cos( omega0 * n ) + a2 * e2 ;                

F2 = abs( x2 * exp( -j * n' * omega ) ) ;
densitateSpectru = F2 .^ 2 / N ;

figure
plot( omega, densitateSpectru ) ;
title( 'Densitatea de putere spectrala - amplitudine 0.5' ) ;

% 3 
a3 = 1 ;
e3 = randn( 1, N ) ;                             
x3 = cos( omega0 * n ) + a3 * e3 ;                

F3 = abs( x3 * exp( -j * n' * omega ) ) ;
densitateSpectru = F3 .^ 2 / N ;

figure
plot( omega, densitateSpectru ) ;
title( 'Densitatea de putere spectrala - amplitudine 1' ) ;

% 4 
a4 = 3 ;
e4 = randn( 1, N ) ;                             
x4 = cos( omega0 * n ) + a4 * e4 ;                

F4 = abs( x4 * exp( -j * n' * omega ) ) ;
densitateSpectru = F4 .^ 2 / N ;

figure
plot( omega, densitateSpectru ) ;
title( 'Densitatea de putere spectrala - amplitudine 3' ) ;

% 5 
a5 = 5 ;
e5 = randn( 1, N ) ;                             
x5 = cos( omega0 * n ) + a5 * e5 ;                

F5 = abs( x5 * exp( -j * n' * omega ) ) ;
densitateSpectru = F5 .^ 2 / N ;

figure
plot( omega, densitateSpectru ) ;
title( 'Densitatea de putere spectrala - amplitudine 5' ) ;

% 6 
a6 = 5.5 ;
e6 = randn( 1, N ) ;                             
x6 = cos( omega0 * n ) + a6 * e6 ;                

F6 = abs( x6 * exp( -j * n' * omega ) ) ;
densitateSpectru = F6 .^ 2 / N ;

figure
plot( omega, densitateSpectru ) ;
title( 'Densitatea de putere spectrala - amplitudine 5.5' ) ;

% 7 
a7 = 14 ;
e7 = randn( 1, N ) ;                             
x7 = cos( omega0 * n ) + a7 * e7 ;                

F7 = abs( x7 * exp( -j * n' * omega ) ) ;
densitateSpectru = F7 .^ 2 / N ;

figure
plot( omega, densitateSpectru ) ;
title( 'Densitatea de putere spectrala - amplitudine 14' ) ;

% Am observat ca atunci cand amplitudinea este mai mare de 14 nu se mai 
% distinge punctul maxim
% Cu cat amplitudinea creste, max. se afunda in zgomot si nu se mai 
% poate determina grafic