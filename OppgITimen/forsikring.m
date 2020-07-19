% Beregner ettaarige doedssannsynligheter:
qk=dod/1000;

% Beregner kumulativ fordeling for gjenstaaende levetid X:
Fx=1-cumprod(1-qk(31:107));

% Plotter den kumulative fordelingen:
stairs(0:76,Fx)
xlabel('Gjenstaaende levetid')
title('Kumulativ fordeling')

% Beregner punktsannsynlighetene for X:
px=Fx-[0;Fx(1:76)];

% Plotter punktsannsynlighetene:
bar(0:76,px)
xlabel('Gjenstaaende levetid')
title('Punktsannsynlighet')


% Beregner forventet naaverdi av erstatningsutbetalingene:
EhX=sum(1000000*px(1:35)./1.03.^(0:34)')

% Beregner forventet naaverdi av premieinnbetalingne pr krone (dvs for K=1):
EgX1 =(1-sum((1/1.03).^(1:35)'.*px(1:35)));
EgX = (EgX1-(1/1.03)^35*sum(px(36:77)))/(1-1/1.03)

% Beregner premien:
premie=EhX/EgX