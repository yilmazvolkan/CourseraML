### Compute Cost

The objective of linear regression is to minimize the cost function:


where the hypothesis h(x) is given by the linear model:





Simply, hp is the predicted value and from predicted value, we can compute the square errors function which gives us the difference between the real value and the predicted value. Than we can compute the cost function, sum of squared errors.

### Gradient Descent

Gradient descent helps to estimate the parameters in the hypothesis function. The way we do this by taking the derivative of the cost function. With each step of gradient descent, our parameters (thetaj) come closer to the optimal values that will achieve the lowest cost J(theta). We need to first compute theta0 and theta1.




This method works for linear regression with one variable however if we have multiple variable we must use multivariate linear regression and the gradient descent should look like with vectorized version:


### Learning Rate

To compare how different learning learning rates affect convergence, it's helpful to plot J for several learning rates on the same figure. We select alpha, the learning rate equals to 1 denoted by blue and others are the results from division by 10,100,1000. It is clearly seen the learning rate 1 converges quickly than others and it the optimal alpha value. 





### Feature Normalization

Some features might be 1000 times more than others and when features dier by orders of magnitude, first performing feature scaling can make gradient descent converge much more quickly. We should subtract the mean value first, then divide the result by standard deviation for each feature. 


### Normal Equation

Gradient descent gives one way of minimizing J. In the normal equation method, we will minimize J by explicitly taking its derivatives with respect to the (theta j)’s and setting them to zero. We do not need to choose alfa and do not need to iterate. This approach is slow if the n the number of features is very large. The normal equation of theta is:

In Octave, pinv() function makes sure to take inverse.

 
