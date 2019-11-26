# **Brain Tumor Segmentation & Classification**
This project aims to segment brain tumors from MRI scans acquired from the BraTS2019 competition using neural networks.  

### Data Navigation  
[Click here for data](https://drive.google.com/drive/folders/1R7udpyjkkBFZc5pjddGasphkjcRYg4YQ?usp=sharing)  
```
Capstone Data   
│
└───Training Data (Used to train model)
│   │
│   └───HGG
│   │    └───259 Folders indicating 1 brain each
│   │        Each folder containing 5 types of MRI scans
│   │        │   %flair.nii.gz
│   │        │   %seg.nii.gz
│   │        │   %t1.nii.gz
│   │        │   %t1ce.nii.gz
│   │        │   %t2.nii.gz
│   │
│   └───LGG
│        └───76 Folders indicating 1 brain each
│            Each folder containing 5 types of MRI scans
│            │   %flair.nii.gz
│            │   %seg.nii.gz
│            │   %t1.nii.gz
│            │   %t1ce.nii.gz
│            │   %t2.nii.gz
│   
└───Validation Data (Data the model has never seen)
    │
    └───125 Folders indicating 1 brain each
            Each folder containing 4 types of MRI scans
            │   %flair.nii.gz
            │   %t1.nii.gz
            │   %t1ce.nii.gz
            │   %t2.nii.gz
```

## **Requirements**  
- antspyx==0.2.2
- fslpy==2.7.0
- Never imported Keras, do i need it?
- Keras==2.3.1
- nibabel==2.5.1
- nilearn==0.5.2
- nipype==1.3.1
- numpy==1.17.2
- pandas==0.25.1
- sklearn ==
- tensorflow==1.15.0

## **Repository Contents**
```
brain_tumor_nn
│   README.md
│   01 - Image Data & Preprocessing.ipynb
│   02 - Modeling.ipynb    

```
## **Data Dictionary**
## **Executive Summary**
## **Conclusions & Recommendations**
## **Sources**
