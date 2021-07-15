# Brief Description of the Project:
This report will summarize the our learnings from the SuperResolution project, which includes, but is not limited to learning about image processing 
(using PIL, OpenCV libraries in python), Neural Networks (specifically Convolution Neural Networks), performance metrics such as PSNR (Peak Signal to Noise Ratio). We also intend this to serve as a base for anyone taking up this project of image super resolution using CNNs, to avoid the mistakes we did and to have a
streamlined path for their complete ascent.


# Description of Files in the repository:
- without dct : First trained network (redundant)
- without dct E20 B30 I5000 : 20 Epochs, 30 batch size, 5000 training images
- dct E30 B32 I100000 : Network trained with DCT bases
- without dct E20 B30 I100000 : 20 Epochs, 30 batch size, 100,000 training
images
- ImageSuperResolution(SoC).ipynb : Jupyter Notebook having the complete program(.py version is also there)
- testing dct.ipynb : Jupyter notebook for training and test dct network is
present


# Contributions by each team Member under the guidance of Mentor **Sahasra Ranjan**:
The first part of the project was going through the paper and analysing it completely. 
That was done together by all three, helping each other along the way.

For the network training part, **Arpon Basu** designed the network architecture and **Harsh Shah** actually implemented and fine tuned it to produce excellent results. 
After that we decided to carry out the training and evaluation process separately, so that twitching the hyperparameters of the network can be done independently and the best performance can be documented. 

**Harsh Shah** took the approach of training the network without using the basis as DCT and using the normalized luminance channel as input to the network (experimented on various sizes of dataset and with dct as well), while Arpon Basu took care of carrying out the training of the network using DCT bases. 

**Shubham Kamble** then pointed out that unlike what we were doing before, ie:- measuring performance via MSE, PSNR would be a better alternative. Moreover, he also suggested that instead of taking patches block by block, taking overlapping patches would be much better.
Finally, **Arpon Basu** took care of the documentation of the complete program as Harsh Shah formulated the performance of the entire project.

