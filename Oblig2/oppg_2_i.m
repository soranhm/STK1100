n = 5; n2 = 15 ; n3 = 50;
my = 3/4; SD = sqrt(3/16);

X = binornd(1,0.75,n,10000);    % Bernoulli fordelt, n = 5
X2 = binornd(1,0.75,n2,10000);  % Bernoulli fordelt, n = 15
X3 = binornd(1,0.75,n3,10000);  % Bernoulli fordelt, n = 50

meanX = mean(X);            % Gjennomsnitt
meanX2 = mean(X2);            % Gjennomsnitt
meanX3 = mean(X3);            % Gjennomsnitt

int = [-Inf, -2.5, -2, -1.5, -1, -0.5, 0, 0.5, 1, 1.5, 2, 2.5, Inf];

Z = sqrt(n)*(meanX-my)/SD;
Z2 = sqrt(n2)*(meanX2-my)/SD;
Z3 = sqrt(n3)*(meanX3-my)/SD;

ant = histc(Z, int);
ant2 = histc(Z2, int);
ant3 = histc(Z3, int);
relfrekv = ant(1:12)/10000;
relfrekv2 = ant2(1:12)/10000;
relfrekv3 = ant3(1:12)/10000;

% plot
subplot(2,2,1); histogram(Z,-3:0.25:3); title('n= 5');
subplot(2,2,2); histogram(Z2,-3:0.25:3); title('n= 15');
subplot(2,2,3); histogram(Z3,-3:0.25:3); title('n= 50');