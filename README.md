# Data preprocessing for image-recognition
pre-processing images using octave for computer vision project
-my first github project tomi

# Description
The images are hand-drawn alphabetic letters from A to J.
  I developed functions for pre-processing images before feeding to a neural network to train a model using TensorFlow.
  The images were hand-drawn by me, which is not an effective way of getting training examples. Therefore for creating more training examples from existing images use the datasetmaker.m
  The model made predictions on the Cross Validation set, which it had never seen before with 85% accuracy 


# Instructions
Code for training a model found in TensorFlow training of model.ipynb
The model made predictions on the Cross Validation set, which it had never seen before with 85% accuracy 


To create new images use function datasetmaker.m
it requires as input (number of images, pixel by pixel , 1==left or 0==right)

To create matrix of images with each row an example and each column a feature use function imagematrix.m
it requires as input (number of images, pixel by pixel)

For feature scaling and normalization use function trainsetnormalize.m for the training set and testsetnormalize.m for the test set

* Ensure images you are working with are in current directory
* datasetmaker2.m and imageprocessor.m are helper functions ensure they are in the same directory
