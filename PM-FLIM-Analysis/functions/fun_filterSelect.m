function [ filtered_stack ] = fun_filterSelect( raw_stack, mode, message)
%FUN_FILTERSELECT Summary of this function goes here
%   Detailed explanation goes here

[n_x, n_y, n_z] = size(raw_stack);
filtered_stack = zeros(n_x, n_y, n_z);

if strcmp(mode, 'none')
    filtered_stack = raw_stack;
    return
end


hwb_progress = waitbar(0, ['Filtering ', message, ' ...']);
for iz = 1:n_z
    
    waitbar(iz/n_z, hwb_progress);
    
    raw_image = raw_stack(:, :, iz);
    
    switch mode
        case 'median3_x1'
            filtered_image = medfilt2(raw_image, [3 3], 'symmetric');
            
        case 'median3_x2'
            filtered_image = medfilt2(raw_image, [3 3], 'symmetric');
            filtered_image = medfilt2(filtered_image, [3 3], 'symmetric');
            
        case 'median3_x3'
            filtered_image = medfilt2(raw_image, [3 3], 'symmetric');
            filtered_image = medfilt2(filtered_image, [3 3], 'symmetric');     
            filtered_image = medfilt2(filtered_image, [3 3], 'symmetric');     
            
        case 'median5_x1'
            filtered_image = medfilt2(raw_image, [5 5], 'symmetric');
            
        case 'median5_x2'
            filtered_image = medfilt2(raw_image, [5 5], 'symmetric');
            filtered_image = medfilt2(filtered_image, [5 5], 'symmetric');           
            
        case 'median5_x3'
            filtered_image = medfilt2(raw_image, [5 5], 'symmetric');
            filtered_image = medfilt2(filtered_image, [5 5], 'symmetric');     
            filtered_image = medfilt2(filtered_image, [5 5], 'symmetric');         
            
        case 'smooth'
            coeff = [1, 1, 1; 1, 2, 1; 1, 1, 1];
            filtered_image = imfilter(raw_image, coeff, 'symmetric')/sum(coeff(:));
    end
    
    
    filtered_stack(:, :, iz) = filtered_image;
end
close(hwb_progress);




end

