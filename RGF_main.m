close all
clear all
clc
%   Low-light Image Enhancement with Regularized Gaussian Fields Model
%   by Chaobo Min
%   2022-8-26
%   64bit OS and Matlab are recommended.
%   ==============================
%   Set alpha = 0 for image with low noise. 
%   With the increase of noise intensity, the higher value of alpha could be adopted. 
%   ==============================
%   Set a lower r to reduce the computational cost
%   ==============================


if 1
    addpath('.\img_data'); 
    addpath('.\src'); 
end

img_type = 'RGB';

%parameter setting of Algorithm 1
parameter.theda = 5;
parameter.lamda = 0.02;
parameter.order = 4;
parameter.r = 0.2;
parameter.tau = 0.6;
parameter.eta = 0.4;%2.5
%parameter setting of Algorithm 2
parameter.mu = 3;
parameter.alpha = 2;
parameter.delta = 1e-3;
parameter.epsilon = 1e-4;
parameter.varepsilon = 1e-4;

index_range = [396];
for z = 1 : size(index_range,2)
            img_index = index_range(1,z);
            i_img = imread(['.\img_data\',img_type,'_',num2str(img_index),'.png']);
 
            tic
            [~,RE_Fine_s,RE,pd,pc,I_fr0,I_fl0,k,std_img] = DSE_image_enhancement(i_img,parameter,img_type,1);
            time = toc;

            if 1
                if strcmp(img_type,'RGB') == 1                 
                    i_img_show = i_img;
                else
                    i_img = double(i_img);
                    i_img_show = i_img./max(i_img(:));
                end
                figure;imshow(i_img_show);title('Input');hold on
                figure,imshow(Contrast_streching(exp(I_fl0),0));title('Illumination');hold on
                figure;imshow(RE_Fine_s);title('Final enhancement');hold on
            end
            
            clc
            i_img = [];
            if(z == size(index_range,2))
                fprintf('Done!\n');
            end
end



