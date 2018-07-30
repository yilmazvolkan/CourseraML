## K-means Clustering and Principal Component Analysis


We will implement the K-means clustering algorithm and apply it to compress an image. In the second part, you will use principal component analysis to nd a low-dimensional representation of face images.
The K-means algorithm is a method to automatically cluster similar data examples together.
The intuition behind K-means is an iterative procedure that starts by guessing the initial centroids, and then renes this guess by repeatedly assigning examples to their closest centroids and then recomputing the centroids based on the assignments.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/1.png" width="450" height="200">
</p>


## Finding closest centroids


In the “cluster assignment" phase of the K-means algorithm, the algorithm assigns every training example x(i) to its closest centroid, given the current positions of centroids. K is the number of the centroids.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/2.png" width="400" height="150">
</p>


## Computing centroid means


Go over every centroid and compute mean of all points that belong to it. Concretely, the row vector centroids(i, :) should contain the mean of the data points assigned to centroid i.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/3.png" width="400" height="150">
</p>


Sum contains all data values and if the data point match with the centroid we add it to the specific cluster. Than, we compute the new mean.


## Part2-Principal Component Analysis(PCA)


To perform dimensionality reduction. First, you should compute the covariance matrix of the data, which is given by:


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/4.png" width="220" height="60">
</p>


After computing the covariance matrix, you can run SVD on it to compute the principal components.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/5.png" width="250" height="80">
</p>


The script will also output the top principal component (eigenvector) found, and you should expect to see an output of about [-0.707-0.707].


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/6.png" width="550" height="270">
</p>


## Projecting the data onto the principal components


Specifically, you are given a dataset X, the principal components U, and the desired number of dimensions to reduce to K. You should project each example in X onto the top K components in U.

Instructions: Compute the projection of the data using only the top K  eigenvectors in U (first K columns).  For the i-th example X(i,:), the projection on to the k-th  eigenvector is given as follows:
 x = X(i, :)';
    		 projection_k = x' * U(:, k);

projectData(X, U, K) computes the projection of  the normalized inputs X into the reduced dimensional space spanned by the first K columns of U. It returns the projected examples in Z.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/7.png" width="300" height="100">
</p>


## Reconstructing an approximation of the data


RECOVERDATA(Z, U, K) recovers an approximation the original data that has been reduced to K dimensions. It returns the approximate reconstruction in X_rec.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/8.png" width="350" height="120">
</p>


The original data points are indicated with the blue circles, while the projected data points are indicated with the red circles.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/9.png" width="410" height="250">
</p>


## Part 3-Face Reduction


To understand what is lost in the dimension reduction, you can recover the data using only the projected dataset. From the reconstruction, you can observe that the general structure and appearance of the face are kept while the fine details are lost. This is a remarkable reduction (more than 10) in the dataset size that can help speed up your learning algorithm significantly.


<p align="center">
    <img src="https://github.com/yilmazvolkan/CourseraML/blob/master/Weeks/Week7/Res/10.png" width="660" height="340">
</p>
