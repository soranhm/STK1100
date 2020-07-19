% Oppgave 3.100 ( kapitell 3.7)
L = 5;
% a) P(X=4) = P(X<=4) - P(X<=3)
p = poisspdf(4,L)
% b) P(X>4) = 1 - P(X<=3)
p = poisscdf(3,L,'upper')