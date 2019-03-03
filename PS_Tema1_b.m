clc ;
clear all ;
close all ;

N = 50 ;      

n = 0 : N - 1 ;                             %suport

omega = -pi : 0.05 : pi ;
omega0 = pi / 8 ;

j = sqrt( -1 ) ;                            %coeficientul complex al lui e

Xn = exp( j * omega0 * n ) ;
X = abs( freqz( Xn, 1, omega ) ) ;          % grila de frecvente [ -pi; pi ]          

figure
plot( omega, X ) ;
title( 'Graficul spectrului( 1, b )' ) ;

% Spectrul nu va contine doar o linie deoarece sinusoida are lungime finita
% Nu se mai verifica acea egalitate (pt N=499 am obtinut amplitudine maxima
% de 317); acest fapt se datoreaza grilei de frecvente pe care se calculeaza
% spectrul
