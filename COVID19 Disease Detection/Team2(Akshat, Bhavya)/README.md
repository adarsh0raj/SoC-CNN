# COVID19 Disease Detection

We have implemented 4 models 2 each for binary and multiclass classification.<br>
Also we tried Tranfer learning for the binary classification task.

## Binary classification
Following Architecture were created by us for the Binary classification-<br>
1. In `binary_1.ipynb` - [Click here](https://user-images.githubusercontent.com/81357954/125945667-ff9b939a-fb3f-4032-8ee0-faa25e7548bb.png)<br>
2. In `binary_2.ipynb`  - [Click here](https://user-images.githubusercontent.com/81357954/125946017-61a8728b-f46e-4769-8da8-763b8c937961.png)<br>

The best accuracy that we could obtain was 98.11% in the `binary_1` model. The weights and model of which are in the repo as `binary.h5` and `binary.json` files.<br><br>
![binary_summary](https://user-images.githubusercontent.com/81357954/125981277-f08933fd-b669-4834-9482-6b16ab5ebeb4.jpeg)


## Multiclass classification

Following Architecture were created by us for the Binary classification-<br>
1. In `multiclass_1.ipynb` - [Click here](https://user-images.githubusercontent.com/81357954/125947318-5c946588-d9da-48e7-a106-e8704fffb99b.png)
2. In `multiclass_2.ipynb` - [Click here](https://user-images.githubusercontent.com/81357954/125947538-fb1a7ad1-5c00-464c-8acd-0c6021617d56.png)

The best accuracy that we could obtain was 95.92% in the `multiclass_2` model. The weights and model of which are in the repo as `multiclass.h5` and `multiclass.json` files.<br><br>
![multiclass_summary](https://user-images.githubusercontent.com/81357954/125981357-026f2548-7939-4c8d-8481-0ac19408872e.JPG)

##
Since jupyter notebook many a times aren't rendered properly on github so we are attaching the google colab links to them below -
1. [bianry_1.ipynb](https://colab.research.google.com/drive/1ZczFhORUnW1y2FcTntaODc0GrSbsCq3r?usp=sharing)
2. [binary_2.ipynb](https://colab.research.google.com/drive/1qqNB35bpnZs9jCXbxSOgdGIZfi9gSfkB)
3. [multiclass_1.ipynb](https://colab.research.google.com/drive/1n36uJWh0IvZoJPVXA3vIJ8AKcvfAB8q0?authuser=1#scrollTo=KxI7GfofyjoC )
4. [multiclass_2.ipynb](https://colab.research.google.com/drive/1cBvDX9JUs7rLK6RqvZO0Q8LRjKT7mJwU)

## Trying Transfer Learning

We also tried implementation of transfer learning using EfficientNet, ResNet, InceptionNet, using the models from `tf_hub`.<br>
In the binary task accuracy of 95.4% was obtained just by training about 2000 params when EfficientNet was used.<br>
The implementation of same is in the `binary_2.ipynb` file.

### Refrences
- *Reasearch Paper- [Click here]( https://journals.physiology.org/doi/pdf/10.1152/physiolgenomics.00084.2020)*
- *Dataset - [Cick here](https://www.kaggle.com/tawsifurrahman/covid19-radiography-database)*
