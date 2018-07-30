## Sigmoid Function

It does not make sense for the hypothesis function h(theta)(x) to take values larger than 1 or smaller than zero when we know y is 0 or 1. We need to change the form for our hypothesis h(theta)(x) to satisfy 0<=h(theta)(x)<=1. The sigmoid function makes sure about this:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/1.png" width="140" height="35">
</p>


We can implement it directly:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/2.png" width="140" height="35">
</p>


## Cost Function and Gradient

We cannot use the same cost function that we use for linear regression because the logistic function(sigmoid) will cause the output to be wavy which is it has many local optima. The cost function is:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/3.png" width="450" height="70">
</p>


We can implement it by;


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/4.png" width="250" height="70">
</p>


First we apply the sigmoid function to X*theta then apply the formula for the cost function. For gradient of the cost function  we can compute it by;


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/5.png" width="250" height="70">
</p>


## Prediction


The predict function will produce “1" or “0" predictions given a dataset and a learned parameter vector theta.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/6.png" width="250" height="70">
</p>


## Regularized Logistic Regression


Simply regularization is adding more features to fit better. Lambda is our regularization parameter. It determines how much the costs our theta parameters are inflated. We can smooth the output of out hypothesis function to reduce the overfitting. 


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/7.png" width="250" height="70">
</p>


The last terms that we added performs our regularization. The gradient of the cost function is:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/8.png" width="250" height="70">
</p>


We can obtain regularization by;


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/9.png" width="250" height="70">
</p>


We add extra bias and regularization sum.

If we decrease lambda 1 to 0, obviously the classifier gets almost every training example correct, but draws a very complicated boundary, thus overfitting the data. Train accuracy : 86.44%


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/11.png" width="400" height="350">
</p>


With a larger lambda, it can be seen that the plot that shows a simpler decision boundary which still separates the positives and negatives fairly well. However, if lambda is set to too high a value, you will not get a good fit and the decision boundary will not follow the data so well, thus underfitting the data. Train accuracy : 74.57%


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week2/Res/12.png" width="400" height="350">
</p>
