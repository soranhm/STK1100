% Oppgave 3.62 ( kapitell 3.5)
p = 0.25; n = 20;
% a ) P(X <= 6)
binocdf(6,n,p)
% b) P(X = 6)
binopdf(6,n,p)
% c) P(X >= 6) = 1 - P(X <= 5)
binocdf(5,n,p,'upper')