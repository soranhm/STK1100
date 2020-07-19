% Beregner ettaarige doedssannsynligheter:
qk=dod/1000;

% Beregner kumulativ fordeling for gjenstaaende levetid X:
Fx = 1 - cumprod(1-qx(36:107));

% Beregner punktsannsynlighetene for X:
Fx2 = [0;Fx(1:71)];
px = fx - fx2;

% Plotter punktsannsynlighetene:
bar(0:71,px)
xlabel('Gjenstaaende levetid')
title('Punktsannsynlighet')

% Beregner forventet naaverdi av pensjonsutbetalingene:
Ehx1 = (100000/1.03^35);
Ehx = sum(Ehx1/(1-(1/1.03)) * (1-((1/1.03).^((36:72)-34))* px(36:72)))

% Beregner forventet naaverdi av premieinnbetalingne pr krone (dvs for K=1):
Egx = (1 - sum((1/1.03).^((1:35)+1)'.*px(1:35)) - (1/1.03)^35*sum(px(36:72)))/(1-1/1.03)

% Beregner premien:
Premie = Ehx/Egx