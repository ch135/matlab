clc;clear;
load carsmall%此数据样本matlab自带
x=Weight;y=Horsepower;z=MPG;%取这3个变量作为拟合对象，x、y自变量，z应变量
plot3(x,y,z,'p');
hold on;
c=ones(length(x),1);
b=regress(z,[x,y,c]);%纯线性拟合 模型z=b(1)*x+b(2)*y+b(3)
[X,Y]=meshgrid(linspace(1500,5000,10),linspace(40,240,10));
C=ones(10);
mesh(X,Y,b(1)*X+b(2)*Y+b(3)*C);
grid on;
b=regress(z,[x.^2,y.^2,x.*y,x,y,c]);%添加非线性项进行拟合
figure
plot3(x,y,z,'p');
hold on;
mesh(X,Y,b(1)*X.^2+b(2)*Y.^2+b(3)*X.*Y+b(4)*X+b(5)*Y+b(6)*C);
grid on;