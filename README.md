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

![](Zebrafish_data/Phasor_clustering/Phasors_raw_denoised/imagePhasorHistogram.png)

Denoised Output Phasor: From Neural network: 

![](Zebrafish_data/Phasor_clustering/Phasors_raw_denoised/imagePhasorHistogram_denoised.png)

## Image segmentation: K-means clustering
Noisy segments: 2D Mouse Kidney shows the microtubules

![](Zebrafish_data/Phasor_clustering/Segments_raw_denoised/Noisy_Segments.png)

Denoised segments:

![](Zebrafish_data/Phasor_clustering/Segments_raw_denoised/Denosied_Segments.png)


# Results shown in the Journal paper

Input Noisy lifetime       | DnCNN denoising Plugin    | Target Image 		         |	
:-------------------------:|:-------------------------:|:-------------------------:|
<img src="Plugins/Test_images/2D_images/Raw_Images/Confocal_FISH_3.png" width="200" height="200" />   |  <img src="Plugins/Test_images/2D_images/Image_Denoising_results/denoised_confocal_fish3.png" width="200" height="200" />| <img src="Plugins/Test_images/2D_images/Target(ground_truth)_Images/gt_Confocal_FISH_3.png" width="200" height="200" /> |


Details: 
Input: 2D single channel image from FMD dataset: Confocal_FISH_3.png (from a confocal microscopy and sample: Zebrafish)
Denoised: Image denoising using our ImageJ plugin (from trained Noise2Noise ML model): (time: 80 ms in GPU, image size: 512x512)
Target: Target image generated by taking average of 50 noisy images in the same FOV: 

## Dataset:
#Images: The testing dataset of Zebrafish and mouse kidney images are given in this folder and for the BAPE sample images can be downloaded from here https://curate.nd.edu/show/mw22v40954f

#Citation for dataset: Please cite the Fluorescence Microscopy Lifetime Denoising (FMLD) dataset using the following format: Mannam, Varun. 2020. “Fluorescence Microscopy Lifetime Denoising (FMLD) Dataset.” Notre Dame. https://doi.org/10.7274/r0-18da-9m58.


## **Copyright**

© 2019 Varun Mannam, University of Notre Dame  

## **License**

Licensed under the [GPL](https://github.com/ND-HowardGroup/Frontiers-FLIM-Denoising/blob/main/LICENSE)
