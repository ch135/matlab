clc;
clear;
[x,y]=meshgrid(-8:5:8,-10:5:10);
z=-9*x+y+7;
subplot(1,2,1);
mesh(x,y,z);
hold on;

[x,z]=meshgrid(-8:5:8,-10:5:10);
y=(x+7)/8;
mesh(x,y,z);
hold on;

[x,y]=meshgrid(-8:5:8,-10:5:10);
z=(x+8)/9;
mesh(x,y,z);
img=imread('ÐÞ¸ÄÍ¼/4c.jpg');
subplot(1,2,2);imshow(img);
