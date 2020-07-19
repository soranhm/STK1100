% Oppgave 3.60 ( kapitell 3.5)
n = 25; p = 0.05;
% a) P(X <= 2) --> P(0)+P(1)+P(2)
binocdf(2,n,p)
% b) P(X >= 5) --> 1 - binocdf(2,n,p)
binocdf(4,n,p,'upper')
% c) P(1 <= X <= 4) --> p(X <= 4) - P(X <= 0)
binocdf(4,n,p)-binocdf(0,n,p)
% d) P av ingen av de 25 er det
binopdf(0,n,p)