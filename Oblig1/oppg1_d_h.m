% regner ut P(Y = y) for y = 0,1,...,10
n = 200; p = 0.02; lambda = n*p;
for i = 0:10
    bino = binopdf(i,n,p);
    pois = poisspdf(i,lambda);
    forskjell = abs(bino - pois);
    fprintf('Binomisk: %f, Poisson: %f, forskjellen: %f \n',bino,pois,forskjell)
end
