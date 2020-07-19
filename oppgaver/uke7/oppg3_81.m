% Oppgave 3.81 ( kapitell 3.6)
N = 12; M = 7; n = 6;
% a) P(X = 5)
hygepdf(5,N,M,n)
% b) P(X <= 4)
hygecdf(4,N,M,n)
hygecdf(4,N,M,n,'upper')