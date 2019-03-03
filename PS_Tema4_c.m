clc ;
clear all ;
close all ;

x = load( 'xilo' ) ;

N = 300 ;
n = 0 : N - 1 ;

x2 = x.yx( 8000 : 10000 ) ;                   %esantioane
figure
subplot( 3, 1, 1 ) ;
plot( x2 ) ;
title( 'Semnalul Xilo 8000 : 10000' ) ;
omega = -pi : 0.05 : pi ;
X2 = abs( freqz( x2, 1, omega ) ) ;
subplot( 3, 1, 2 ) ;
stem( omega, X2 ) ;
title( 'Stem' ) ;
subplot( 3, 1, 3 ) ;
plot( omega, X2 ) ;
title( 'Plot' ) ;



x3 = x.yx( 8000 : 9500 ) ;                    %esantioane
figure
subplot( 3, 1, 1 ) ;
plot( x3 ) ;
title( 'Semnalul Xilo 8000 : 9500' ) ;
omega = -pi : 0.05 : pi ;
X3 = abs( freqz( x3, 1, omega ) ) ;
subplot( 3, 1, 2 ) ;
stem( omega, X3 ) ;
title( 'Stem' ) ;
subplot( 3, 1, 3 ) ;
plot( omega, X3 ) ;
title( 'Plot' ) ;



x4 = x.yx( 8000 : 9000 ) ;                    %esantioane
figure
subplot( 3, 1, 1 ) ;
plot( x4 ) ;
title( 'Semnalul Xilo 8000 : 9000' ) ;
omega = -pi : 0.05 : pi ;
X4 = abs( freqz( x4, 1, omega ) ) ;
subplot( 3, 1, 2 ) ;
stem( omega, X4 ) ;
title( 'Stem' ) ;
subplot( 3, 1, 3 ) ;
plot( omega, X4 ) ;
title( 'Plot' ) ;



x5 = x.yx( 8000 : 8500 ) ;                    %esantioane
figure
subplot( 3, 1, 1 ) ;
plot( x5 ) ;
title( 'Semnalul Xilo 8000 : 8500' ) ;
omega = -pi : 0.05 : pi ;
X5 = abs( freqz( x5, 1, omega ) ) ;
subplot( 3, 1, 2 ) ;
stem( omega, X5 ) ;
title( 'Stem' ) ;
subplot( 3, 1, 3 ) ;
plot( omega, X5 ) ;
title( 'Plot' ) ;