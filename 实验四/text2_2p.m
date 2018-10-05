clc;
clear;
[x,y]=meshgrid(-8:.5:8,-10:.5:10);
z=3-x-2*y;
subplot(1,2,1);
mesh(x,y,z);
hold on;

[x,z]=meshgrid(-8:.5:8,-10:.5:10);
y=(3-3*x)/4;
mesh(x,y,z);
hold on;

[x,y]=meshgrid(-8:.5:8,-10:.5:10);
z=(10-2*x-10*y)/4;
mesh(x,y,z);
img=imread('ÐÞ¸ÄÍ¼/4c.jpg');
subplot(1,2,2);imshow(img);