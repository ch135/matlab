clc;clear;
load carsmall%����������matlab�Դ�
x=Weight;y=Horsepower;z=MPG;%ȡ��3��������Ϊ��϶���x��y�Ա�����zӦ����
plot3(x,y,z,'p');
hold on;
c=ones(length(x),1);
b=regress(z,[x,y,c]);%��������� ģ��z=b(1)*x+b(2)*y+b(3)
[X,Y]=meshgrid(linspace(1500,5000,10),linspace(40,240,10));
C=ones(10);
mesh(X,Y,b(1)*X+b(2)*Y+b(3)*C);
grid on;
b=regress(z,[x.^2,y.^2,x.*y,x,y,c]);%��ӷ�������������
figure
plot3(x,y,z,'p');
hold on;
mesh(X,Y,b(1)*X.^2+b(2)*Y.^2+b(3)*X.*Y+b(4)*X+b(5)*Y+b(6)*C);
grid on;