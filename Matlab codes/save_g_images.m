clc 
close all
clear variables

%date: 20th May 2020
%VM

font = 14;
format long;

%convert file here

input = Tiff('WL800_PX250_5mW_AVGx3_d0um_dz1um_t0_G0011.tif');
input = read(input);
input = double(input);
s1 = size(input,1);

input_proc = zeros(s1,s1);
for i=1:s1
    for j=1:s1
        if input(i,j)<=0
               input_proc(i,j) = 0;
        elseif input(i,j)>1
               input_proc(i,j) = 1;
        else
            input_proc(i,j) = input(i,j);
        end
    end
end

fun_exportRealTIF(input_proc,'WL800_PX250_5mW_AVGx3_d0um_dz1um_t0_G0011_processed.tif');