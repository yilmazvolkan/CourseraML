Anomaly Detection and Recommender Systems: We will implement the anomaly detection algorithm and apply it to detect failing servers on a network.
Than we will use collaborative filtering to build a recommender system for movies.
The data looks like this:



Estimate Gaussian:  The formula for the variance and mean are:

			




Selecting the threshold: SELECTTHRESHOLD(yval, pval) finds the best threshold to use for selecting outliers based on the results from a validation set (pval) and the ground truth (yval).
We have estimated the Gaussian parameters, you can investigate which examples have a very high probability given this distribution and which examples have a very low probability. The low probability examples are more likely to be the anomalies in our dataset.
One way to determine which examples are anomalies is to select a threshold based on a cross validation set where the label y = 1 corresponds to an anomalous example, and y = 0 corresponds to a normal example. In this part of the exercise, you will implement an algorithm to select the “threshold " using the F1 score on a cross validation set.
The function selectThreshold should return two values; the first is the selected threshold “epsilon". If an example x has a low probability p(x) < “epsilon", then it is considered to be an anomaly. The function should also return the F1 score, which tells you how well you're doing on nding the ground truth anomalies given a certain threshold.



The code section to implement this is below;




Recommender Systems: We will implement the collaborative filtering learning algorithm and apply it to a dataset of movie ratings. This dataset consists of ratings on a scale of 1 to 5. The dataset has nu = 943 users, and nm = 1682 movies.
The objective of collaborative filtering is to predict movie ratings for the movies that users have not yet rated, that is, the entries with R(i; j) = 0. This will allow us to recommend the movies with the highest predicted ratings to the user.

Collaborative filtering learning algorithm:  Regularized Cost Function:

Regularized Gradient:


We can implement both;


After you have nished implementing the collaborative filtering cost function and gradient, you can now start training your algorithm to make movie recommendations for yourself.

