close all
clear all
image = im2double(imread('.\images\IMAG0235_stage4_gray_edge.tif'));
image_undo_gamma_wb_applied_w_gamma = image.^(1/2.2);
%% save image
saved_image = uint16(image_undo_gamma_wb_applied_w_gamma*65536);   
outputFileName = '.\images\IMAG0235_stage4_gray_edge_w_gamma.tif';
t = Tiff(outputFileName,'w');
% 8 bit save works well
output_unit16 = saved_image;
tagstruct.ImageLength = size(output_unit16,1);
tagstruct.ImageWidth = size(output_unit16,2);
tagstruct.BitsPerSample = 16;
tagstruct.SamplesPerPixel = 3;
tagstruct.Photometric = Tiff.Photometric.RGB;
% tagstruct.RowsPerStrip = 16;
tagstruct.PlanarConfiguration = Tiff.PlanarConfiguration.Chunky;
tagstruct.Software = 'MATLAB';
t.setTag(tagstruct);
t.write(output_unit16);
t.close();