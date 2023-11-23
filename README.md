# Frontiers FLIM Denoising
This is the folder contains all the results used in the pre-trained CNN for FLIM lifetime denoising and phasor denoising.

# Installation of the plugins
[Simple Instructions](https://github.com/ND-HowardGroup/Instant-Image-Denoising/blob/master/Plugins/Instructions_to_Install_Image_denoising_plugins.docx)

#For fluoresence microscopy image denoising using ImageJ plugin: 
https://github.com/ND-HowardGroup/Instant-Image-Denoising

We use these (DnCNN and Noise2Noise) CNN models as pre-trained CNNs for denoising FLIM lifetime and phasor denoising. 

#For K-means segmentation: 
https://github.com/ND-HowardGroup/Kmeans-FLIM-Phasors


## Phasor images
Noisy Input phasor: 3D zebrafish sample

![](In_Vivo_imaging_samples/Zebrafish_data/Phasor_clustering/Phasors_raw_denoised/imagePhasorHistogram.png)

Denoised Output Phasor: From Neural network: 

![](In_Vivo_imaging_samples/Zebrafish_data/Phasor_clustering/Phasors_raw_denoised/imagePhasorHistogram_denoised.png)

## Image segmentation: K-means clustering
Noisy segments: 2D Mouse Kidney shows the microtubules

![](In_Vivo_imaging_samples/Mouse_kidney_data/Overlapped_segments_raw_denoised/Noisy_Segments.png)

Denoised segments: 2D Mouse Kidney shows the microtubules show the upstream and downstream microtubules.

![](In_Vivo_imaging_samples/Mouse_kidney_data/Overlapped_segments_raw_denoised/Denosied_Segments.png)


# Results shown in the Journal paper
Details: plant sample1
Input: 2D single channel image from plant images dataset: (from our custom made InstantFLIM FD-MPM-FLIM system at excitaiton: 800nm and sample: bean leaf plant in vivo imaging)
Denoised: Image denoising using our ImageJ plugin (using pre-trained DnCNN CNN model): (time: 80 ms in GPU, image size: 512x512)
Target: Target image generated by taking average of 5 noisy images in the same FOV: 

Input Noisy HSV lifetime       | Median HSV filtering  | DnCNN HSV denoising       | Target HSV lifetime       |	
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
<img src="In_Vivo_imaging_samples/Plant_imaging_data/Extracted_composite_lifetime_HSV/lifetime_images_plant_mid_layer/data2_noisy_imageLifetimeHSV.png" width="250" height="250" />   |  <img src="In_Vivo_imaging_samples/Plant_imaging_data/Extracted_composite_lifetime_HSV/lifetime_images_plant_mid_layer/data2_median_imageLifetimeHSV.png" width="250" height="250" />| <img src="In_Vivo_imaging_samples/Plant_imaging_data/Extracted_composite_lifetime_HSV/lifetime_images_plant_mid_layer/data2_dncnn_imageLifetimeHSV.png" width="250" height="250" /> | <img src="In_Vivo_imaging_samples/Plant_imaging_data/Extracted_composite_lifetime_HSV/lifetime_images_plant_mid_layer/data2_averaged_noisy_I_imageLifetimeHSV.png" width="250" height="250" />|


Input Noisy lifetime       | Median filtering          | DnCNN denoising Plugin    | Target Image 		         |	
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
<img src="In_Vivo_imaging_samples/Plant_imaging_data/Phasor_clustering/plant_images_mid_layer/raw_data2_imagePhasorCluster.png" width="200" height="120" />   |  <img src="In_Vivo_imaging_samples/Plant_imaging_data/Phasor_clustering/plant_images_mid_layer/median_data2_imagePhasorCluster.png" width="200" height="120" />| <img src="In_Vivo_imaging_samples/Plant_imaging_data/Phasor_clustering/plant_images_mid_layer/dncnn_data2_imagePhasorCluster.png" width="200" height="120" /> | <img src="In_Vivo_imaging_samples/Plant_imaging_data/Phasor_clustering/plant_images_mid_layer/gt_data2_imagePhasorCluster.png" width="200" height="120" />|



Details: plant sample2
Input: 2D single channel image from plant images dataset: upper epidermis layer: (from our custom made InstantFLIM FD-MPM-FLIM system at excitaiton: 800nm and sample: bean leaf plant in vivo imaging)
Denoised: Image denoising using our ImageJ plugin (using pre-trained DnCNN CNN model): (time: 80 ms in GPU, image size: 512x512)
Target: Target image generated by taking average of 5 noisy images in the same FOV: 
Input Noisy HSV lifetime       | Median HSV filtering  | DnCNN HSV denoising       | Target HSV lifetime       |	
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
<img src="In_Vivo_imaging_samples/Plant_imaging_data/Extracted_composite_lifetime_HSV/lifetime_images_plant_top_layer/raw_data1_imageLifetimeHSV.png" width="250" height="250" />   |  <img src="In_Vivo_imaging_samples/Plant_imaging_data/Extracted_composite_lifetime_HSV/lifetime_images_plant_top_layer/median_data1_imageLifetimeHSV.png" width="250" height="250" />| <img src="In_Vivo_imaging_samples/Plant_imaging_data/Extracted_composite_lifetime_HSV/lifetime_images_plant_top_layer/dncnn_data1_imageLifetimeHSV.png" width="250" height="250" /> | <img src="In_Vivo_imaging_samples/Plant_imaging_data/Extracted_composite_lifetime_HSV/lifetime_images_plant_top_layer/averaged_data1_imageLifetimeHSV.png" width="250" height="250" />|


Input Noisy lifetime       | Median filtering          | DnCNN denoising Plugin    | Target Image 		         |	
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
<img src="In_Vivo_imaging_samples/Plant_imaging_data/Phasor_clustering/plant_images_top_layer/raw_data1_imagePhasorCluster.png" width="200" height="120" />   |  <img src="In_Vivo_imaging_samples/Plant_imaging_data/Phasor_clustering/plant_images_top_layer/median_data1_imagePhasorCluster.png" width="200" height="120" />| <img src="In_Vivo_imaging_samples/Plant_imaging_data/Phasor_clustering/plant_images_top_layer/dncnn_data1_imagePhasorCluster.png" width="200" height="120" /> | <img src="In_Vivo_imaging_samples/Plant_imaging_data/Phasor_clustering/plant_images_top_layer/averaged_data1_imagePhasorCluster.png" width="200" height="120" />|




# Noise2Noise pre-trained CNN results
![](Ex_Vivo_imaging_samples/Noise2Noise_results_BPAE_sample/Lifetime_denoising_Noise2Noise_BPAE.png)

Details: 
Input: 2D single channel FLIM image of FLIM BPAE sample captured using our Instant FLIM system:
FLIM Image denoising using our ImageJ plugin (from trained Noise2Noise ML model): (time: 80 ms in GPU, image size: 512x512)
Target: Target image generated by taking average of 5 noisy images in the same FOV: 

## Dataset:
#Images: The testing dataset of in vivo Zebrafish and in vio mouse kidney images are given in this folder and for the BAPE sample images can be downloaded from here https://curate.nd.edu/show/mw22v40954f
Additional images are added from the instant FLIM and commertial FLIM systems in the datasets folder. Fixed BPAE cells and fixed mouse kidney cells are imaged using Instant FLIM system the data is provided in the Datasets folder. 

#Citation for dataset: Please cite the Fluorescence Microscopy Lifetime Denoising (FMLD) dataset using the following format: Mannam, Varun. 2020. “Fluorescence Microscopy Lifetime Denoising (FMLD) Dataset.” Notre Dame. https://doi.org/10.7274/r0-18da-9m58.


## **Copyright**

© 2019 Varun Mannam, University of Notre Dame  

## **License**

Licensed under the [GPL](https://github.com/ND-HowardGroup/Frontiers-FLIM-Denoising/blob/main/LICENSE)
