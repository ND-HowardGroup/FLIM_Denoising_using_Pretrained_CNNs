clear variables
clc

%Varun Mannam
%date: 7th July 2020
%plot the phasor graph with denoised



font = 14;
linewidth = 2;
format long;

%fixed seed
rng('default');
rng(1);

%constants
g_min = -0.1;
g_max = 1.1;
s_min = -0.1;
s_max = 0.6;
%I_min = -0.1;
%I_max = 1.1;

%read data of G and S images
g_filename = 'outputImage_dncnn_denoised_G.tif';
s_filename = 'outputImage_dncnn_denoised_S.tif';
i_filename = 'outputImage_dncnn_denoised_I.tif';

%g_input = Tiff(g_filename);
N = length(imfinfo(g_filename));
imsize = 360;
grid_size = 200;

g_stack = zeros(imsize,imsize,N);
s_stack = zeros(imsize,imsize,N);
i_stack = zeros(imsize,imsize,N);
for i=1:N
    g_image = imread(g_filename,i);
    g_image(g_image<g_min)=g_min;
    g_image(g_image>g_max)=g_max;
    
    s_image = imread(s_filename,i);
    s_image(s_image<s_min)=s_min;
    s_image(s_image>s_max)=s_max;
    
    %valid portion of images
    g_stack(:,:,i) = g_image;
    s_stack(:,:,i) = s_image;
end  
    
for i=1:N
    i_stack(:,:,i) = imread(i_filename,i);
end
i_min = min(i_stack(:));
i_max = max(i_stack(:));

n_good = numel(find(((g_stack < g_max) & (g_stack > g_min)) & ((s_stack < s_max) & (s_stack > s_min))));
%only goog pixels here

g_array = linspace(g_min, g_max, grid_size);
s_array = linspace(s_min, s_max, grid_size);
phase_matrix = zeros(grid_size, grid_size);


for i = 1:N            
    for j = 1:imsize
        for k = 1:imsize
            g_val = g_stack(j, k, i);
            s_val = s_stack(j, k, i);
            i_val = i_stack(j, k, i);
            if g_val <= g_max && g_val >= g_min && s_val <= s_max && s_val >= s_min
                %find the index and increment at that point
                [~, g_index] = min(abs(g_val-g_array));
                [~, s_index] = min(abs(s_val-s_array));
                % row = S, col = G
                phase_matrix(s_index, g_index) = phase_matrix(s_index, g_index)+1;
            end
         end
    end     
end

figure, 
%im_PH = imagesc('Parent',handles.Axes_PH, 'XData',[Gmin, Gmax],'YData',[Smin, Smax],'CData',PH_matrix);
imagesc('XData',[g_min, g_max],'YData',[s_min, s_max],'CData',phase_matrix);
%caxis([0, max(phase_matrix(:))]);
xlim([g_min, g_max]); 
ylim([s_min, s_max]);
set(gca,'YDir','normal');
cmap = colormap('jet');
cmap(1,:) = [1 1 1];
colormap(cmap);
set(gca,'XTick',[],'YTick',[]);
hold on
theta = linspace(0, pi, 100); 
radius = 0.5;
plot(radius*cos(theta)+0.5, radius*sin(theta), 'k', 'LineWidth', 1);
line([0 1], [0 0], 'Color', 'k', 'LineWidth', 1);
hold off
set(gca,'DataAspectRatio',[1 1 1]);
set(gca,'XColor','none');
set(gca,'YColor','none');  


ph_normalized = phase_matrix*255/max(phase_matrix(:));
save_to_tiff(uint8(ph_normalized),'denoised_phase_matrix_normalized.tif');