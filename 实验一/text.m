%{
m文件可分成脚本式和函数式，用于存放函数。输入文件名和函数就可责行
%}
function text
%{
text1
text2
text3
text4
%}
circle
end
%{
function text1
x=(0.2:0.2:1);
y=sin(x).*cos(x);
plot(x,y,'g-s');
y
end
function text2
A=(1:9);
B=10-A;
L1=A==B;
L2=A<=6;
L3=A>4&A<8;
L1
L2
L3
end
function text3
a=1:10;
A=mean(a);
A
end

function text4
a=4;
if mod(a,2)==0
    a=a./2;
else
    a=a*3+1;
end
a
end
%}
function circle
x0=2;y0=3;z0=4;%球心
r=5;%半径
%下面开始画
[x,y,z]=sphere;
mesh(r*x+x0,r*y+y0,r*z+z0)
axis equal
end