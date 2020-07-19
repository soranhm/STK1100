% Oppgave 4.72 ( kapitell 4.4)
a = 4; b = 6;
% a) P(12 < X < 24)
g = gamcdf(24,a,b) - gamcdf(12,a,b)
% b) P(X <= 24)
g = gamcdf(24,a,b)