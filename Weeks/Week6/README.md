## Support Vector Machines


Informally, the C parameter is a positive value that controls the penalty for misclassified training examples. A large C parameter tells the SVM to try to classify all the examples correctly. C plays a role
similar to 1/lambda, where lambda is the regularization parameter that we were using previously for logistic regression.


## Kernel


You can think of the Gaussian kernel as a similarity function that measures the “distance" between a pair of examples, (x(i); x(j)). The Gaussian kernel is also parameterized by a bandwidth parameter, , which determines how fast the similarity metric decreases (to 0) as the examples are further apart. We can compute the kernel by;


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week6/Res/1.png" width="450" height="160">
</p>


And the code section that computes kernel:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week3/Res/2.png" width="450" height="160">
</p>


## Hypermarater Tuning


To find best parameter C;


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week3/Res/3.png" width="450" height="160">
</p>
