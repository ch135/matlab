X=linspace(-pi,pi,100);
Y1=sin(X);
Y2=cos(X);
Y3=tan(X);
Y4=cot(X);
subplot(1,2,1),plot(X,Y1,'-r',X,Y2,'-g',X,Y3,'-b');
legend('sin(X)','cos(X)','tan(x)');
subplot(1,2,2),plot(X,Y4,'-m');
legend('cot(X)');


