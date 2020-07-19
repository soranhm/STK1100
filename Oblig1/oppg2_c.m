qx = dod/1000;
fx = 1- cumprod(1-qx(36:107));
fx2 = [0;fx(1:71)];
px = fx - fx2;
plot(0:71,px,'b')
xlabel('Gjenstaaende levetid')
ylabel('Punktsannsynlighet')
