% code for intensity level slicing
clear all;
a=imread('cameraman.tif');
[rows,columns]=size(a);

a=double(a);
m=100;
n=200;
for i=1:rows
    for j=1:columns
        if a(i,j)<= m
            b(i,j)= a(i,j);
        elseif a(i,j)>m & a(i,j)<=n
            b(i,j)= 175;
        else
            b(i,j)= a(i,j);
        end
    end
end    
figure;
subplot(1,2,1);
imshow(uint8(a));
title('Original Image');
subplot(1,2,2);
imshow(uint8(b));
title('Intensity Level Slicing');