Cost Function and Gradient: Computing the cost and gradient for logistic regression with regularization.


One Vs All Classification: ONEVSALL trains multiple(num_labels) logistic regression classifiers and returns all the classifiers in a matrix all_theta, where the i-th row of all_theta corresponds to the classifier for label i. fmincg works similarly to fminunc, but is more efficient when we are dealing with large number of parameters to optimize the cost function. 

One Vs All Prediction: One-vs-all prediction function will pick the class for which the corresponding logistic regression classifier outputs the highest probability and return the class label (1, 2,..., or K) as the prediction for the input example.
 This code can be done all vectorized using the max function. In particular, the max function can also return the index of the max element. If your examples are in rows, then, you can use max(A, [], 2) to obtain the max for each row.



p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions for each example in the matrix X. Note that X contains the examples in rows. all_theta is a matrix where the i-th row is a trained logistic regression theta vector for the i-th class.










Neural Network Prediction: 


Ones for bias units. We can apply the feedforward propagation directly;



