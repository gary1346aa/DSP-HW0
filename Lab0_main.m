close;
clear;
clc;

%% read image
filename = 'image.jpg';
myfile = 'myimage.jpg';
I = imread(filename);
my = imread(myfile);
figure('name', 'source image');
imshow(I);


%% ----- pre-lab ----- %%
% output = function(input1, input2, ...);
% grey_scale function
I2 = grey_scale(I);
M2 = grey_scale(my);
%% ----- homework lab ----- %%
% flip function
I3 = flip(I,0);
I31 = flip(I,1);
I32 = flip(I,2);
M3 = flip(my,0);
M31 = flip(my,1);
M32 = flip(my,2);
% rotation function
I4 = rotation(I, pi/3);
I4r = rotation(I, -pi/3);
M4 = rotation(my, pi/3);
M4r = rotation(my, -pi/3);
%% show image
figure('name', 'grey scale image'),
imshow(I2);
figure('name', 'flipped image'),
imshow(I3);
figure('name', 'rotated image'),
imshow(I4);
%% write image
% save image for your report
filename1 = 'results/greyscale_image.jpg';
imwrite(I2, filename1);
filename2 = 'results/flip_horizontal_image.jpg';
imwrite(I3, filename2);
filename3 = 'results/flip_vertical_image.jpg';
imwrite(I31, filename3);
filename4 = 'results/flip_both_image.jpg';
imwrite(I32, filename4);
filename5 = 'results/rotation_clockwise_pi_3_image.jpg';
imwrite(I4, filename5);
filename6 = 'results/rotation_counterclockwise_pi_3_image.jpg';
imwrite(I4r, filename6);

filename1 = 'results/greyscale_myimage.jpg';
imwrite(M2, filename1);
filename2 = 'results/flip_horizontal_myimage.jpg';
imwrite(M3, filename2);
filename3 = 'results/flip_vertical_myimage.jpg';
imwrite(M31, filename3);
filename4 = 'results/flip_both_myimage.jpg';
imwrite(M32, filename4);
filename5 = 'results/rotation_clockwise_pi_3_myimage.jpg';
imwrite(M4, filename5);
filename6 = 'results/rotation_counterclockwise_pi_3_myimage.jpg';
imwrite(M4r, filename6);

