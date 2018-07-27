### Compute Cost

The objective of linear regression is to minimize the cost function:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/costFunc.png" width="250" height="70">
</p>


where the hypothesis h(x) is given by the linear model:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/hypothesis.png" width="200" height="35">
</p>


Simply, hp is the predicted value and from predicted value, we can compute the square errors function which gives us the difference between the real value and the predicted value. Than we can compute the cost function, sum of squared errors.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/costCode.png" width="450" height="150">
</p>


### Gradient Descent

Gradient descent helps to estimate the parameters in the hypothesis function. The way we do this by taking the derivative of the cost function. With each step of gradient descent, our parameters (thetaj) come closer to the optimal values that will achieve the lowest cost J(theta). We need to first compute theta0 and theta1.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/theta.png" width="150" height="40">
</p>


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/computeTheta.png" width="500" height="60">
</p>


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/thetaCode.png" width="400" height="120">
</p>


This method works for linear regression with one variable however if we have multiple variable we must use multivariate linear regression and the gradient descent should look like with vectorized version:

<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/vectorizedGradient.png" width="450" height="80">
</p>


### Learning Rate

To compare how different learning learning rates affect convergence, it's helpful to plot J for several learning rates on the same figure. We select alpha, the learning rate equals to 1 denoted by blue and others are the results from division by 10,100,1000. It is clearly seen the learning rate 1 converges quickly than others and it the optimal alpha value. 


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/learningRates.png" width="450" height="350">
</p>


### Feature Normalization

Some features might be 1000 times more than others and when features dier by orders of magnitude, first performing feature scaling can make gradient descent converge much more quickly. We should subtract the mean value first, then divide the result by standard deviation for each feature. 


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/featureNormalization.png" width="450" height="150">
</p>


### Normal Equation

Gradient descent gives one way of minimizing J. In the normal equation method, we will minimize J by explicitly taking its derivatives with respect to the (theta j)’s and setting them to zero. We do not need to choose alfa and do not need to iterate. This approach is slow if the n the number of features is very large. The normal equation of theta is:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/normalEqu.png" width="200" height="40">
</p>


In Octave, pinv() function makes sure to take inverse.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week1/Res/normalCode.png" width="250" height="40">
</p>
