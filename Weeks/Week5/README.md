## Regularized Linear Regression


Regularized linear cost function can be computed as follows;


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week5/Res/1.png" width="400" height="80">
</p>


The code section for this formula is:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week5/Res/2.png" width="500" height="170">
</p>


## Gradient


We can compute the gradient by;


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week5/Res/3.png" width="500" height="160">
</p>


grad(1) makes sure we did not add regularization for the first time.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week5/Res/4.png" width="500" height="260">
</p>


The problem with our linear model was that it was too simple for the data and resulted in underfitting (high bias). In this part of the exercise, you will address this problem by adding more features.


## Polynomial Features


We can compute each X polynomial feature like x, x^2,x^3 etc.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week5/Res/5.png" width="250" height="40">
</p>


## Selecting lambda


We will use a cross validation set to evaluate how good each  value is.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week5/Res/6.png" width="450" height="160">
</p>


This function basically computes train and validation set error according to different values of lambda.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week5/Res/7.png" width="500" height="260">
</p>


We can say lambda value 3 is the best. 3. Due to randomness in the training and validation splits of the dataset, the cross validation error can sometimes be lower than the training error.
