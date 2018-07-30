## Neural Network Cost Function


The formula is for the regularized cost function:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/1.png" width="450" height="160">
</p>


And our network should look like this:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/2.png" width="450" height="160">
</p>



We can compute the regularized cost function directly:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/3.png" width="450" height="160">
</p>


J is our cost function and we add regularization part with computed reg. 


## Neural Network Backpropagation


To min cost function just like gradient descent. The process mathematically is:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/4.png" width="450" height="160">
</p>


We already did this part in the previous implementation.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/5.png" width="450" height="160">
</p>


We already calculate the yk and a3 and we can use them here.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/6.png" width="450" height="160">
</p>


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/7.png" width="450" height="160">
</p>


Thirdly,  we compute the delta 2 according to given backpropagation formula. sigmoidGradient function basically calculates:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/8.png" width="450" height="160">
</p>


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/9.png" width="450" height="160">
</p>


According to this part, we compute Delta1 and Delta2 and we are ready to compte D. D matrix is used as an accumulator to add up our values as we go along and eventually compute our partial derivative of cost function. Regularization version of D can be computed as follows:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week4/Res/10.png" width="450" height="160">
</p>
