close all
clear all

image = imread('.\images\IMAG0235_stage4.tif');

img8 = uint8(image / 256);
figure, imshow(img8);

imwrite(img8,'.\images\IMAG0235_stage4_8bit.tif');
delete('.\images\IMAG0235_stage4.tif');