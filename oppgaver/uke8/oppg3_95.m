% Oppgave 3.95 ( kapitell 3.7)
% Lambda = L
L = 20;
% a) P(X=10)
p = 0;
for i = 0:10
    p = p + poisspdf(i,L);
end
p
% b) P(alt uten 0:20)
p = 0;
for i = 0:20
    p = p + poisspdf(i,L);
end
1-p
% c) P(10 <= X <= 20) & P(10 < X < 20
p = 0;
p2 = 0;
for i = 10:20
    p = p + poisspdf(i,L);
    if i>10 & i<20
        p2 = p2 +poisspdf(i,L);
    end
end
p,p2
% d) P(8 <= X <= 20) & P(10 < X < 20
p = 0;
for i = 2:20
    p = p + poisspdf(i,L);
end
p