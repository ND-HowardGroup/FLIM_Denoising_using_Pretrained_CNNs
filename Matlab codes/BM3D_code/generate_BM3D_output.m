close all;
clear all; 
clc

addpath('/Users/sahiti/Documents/GitHub/Frontiers_FLIM_Denoising/Matlab codes/BM3D_code/utils/');
addpath('/Users/sahiti/Documents/GitHub/Frontiers_FLIM_Denoising/Matlab codes/BM3D_code/Test_images/BPAE_samples/');

file_name = '/Users/sahiti/Documents/GitHub/Frontiers_FLIM_Denoising/Matlab codes/BM3D_code/Test_images/BPAE_samples/W800_P200_5mW_Ax5_S.tif';
%direct lifetime
input_img = imread(file_name);
input_img = double(input_img);
s1 = size(input_img,1);
input_proc = zeros(s1,s1);
set_max_val = 0.6;
for i=1:s1
    for j=1:s1
        if input_img(i,j)<=0
               input_proc(i,j) = 0;
        elseif input_img(i,j)>set_max_val
               input_proc(i,j) = set_max_val;
        else
            input_proc(i,j) = input_img(i,j);
        end
    end
end

m11 = min(input_proc(:));
m12 = max(input_proc(:));
input_img2 = (input_proc-m11)/(m12-m11);



polyorder=1;    
variance_power=1;
clipping_below=1;
clipping_above=1; 
prior_density=1;  
median_est=1;  
LS_median_size=1;   
tau_threshold_initial=1; 
level_set_density_factor=1;   
integral_resolution_factor=1;    
speed_factor=1;   
text_verbosity=0;       
figure_verbosity=0;   
lambda=1; 
auto_lambda=1; 

fitparams = estimate_noise(input_img2);