% Oppgave 4.71 ( kapitell 4.4)
a = 5; b = 4;
% a) P(X <= 24) = F(24/b;a)
g = gamcdf(24,a,b)
% b) P(20 < X < 40) 
g = gamcdf(40,a,b) - gamcdf(20,a,b)