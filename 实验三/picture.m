function []=picture(c,n);
p=imread(c);
axes('position',n);
imshow(p);
end
