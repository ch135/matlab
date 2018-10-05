clc;
clear;
[x,y]=meshgrid(-8:.5:8,-10:.5:10);
z=(6-2*x-3*y)/4;
subplot(1,2,1);
mesh(x,y,z);
hold on;

[x,y]=meshgrid(-8:.5:8,-10:.5:10);
z=(5-3*x-5*y)/2;
mesh(x,y,z);
hold on;

[x,y]=meshgrid(-8:.5:8,-10:.5:10);
z=(32-4*x-3*y)/30;
mesh(x,y,z);
img=imread('ÐÞ¸ÄÍ¼/4c.jpg');
subplot(1,2,2);imshow(img);
