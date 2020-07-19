% Oppgave 3.80 ( kapitell 3.6)
n = 5; M = 6; N = 15;
% a) 
% P(X = 2); P(X <= 2); P(X >= 2);
hygepdf(2,N,M,n)
hygecdf(2,N,M,n)
hygecdf(1,N,M,n,'upper')
