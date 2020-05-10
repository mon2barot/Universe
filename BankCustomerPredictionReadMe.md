<h2>Data Science Project Overview: Predicting Future Bank Customers</h2>

<b> The goal of the project is to predict whether a prospect will convert into a customer or not</b>

<ul>
<li> Data wrangling has been performed to ensure that the data has no corruptions and the is ready for analysis.</li> 
<li> The Random Forest model has been applied to assist in the process of prediction.</li>
<li> The accuracy of the model has been evaluated.</li>
</ul>

<h2> Code and Resources Used </h2>
<b>Python Version:</b> 3.7.4<br>
<b>Packages:</b> Pandas, NumPy, Seaborn, Sci-Kit Learn, Matplotlib, Random Forest<br>
<b>Dataset:</b> <a href = "https://archive.ics.uci.edu/ml/datasets/bank+marketing" >Bank Marketing Data Set</a>

<h2> Project Walk-Through </h2>
<h3> Exploratory Data Analysis</h3>

![alt text](https://github.com/mon2barot/universe/blob/master/images/BPDataTypes.JPG "Data types of each column") <hr>

![alt text](https://github.com/mon2barot/universe/blob/master/images/BPValuCounts.JPG "Number of customers and medium of contact") <hr>

![alt text](https://github.com/mon2barot/universe/blob/master/images/BPCorrUnique.JPG "Checking correlation and distinct values")

<h2> Data Wrangling </h2>

<ul>
<li> Renaming column header. </li>
<li> Replacing categorical values with 0 and 1.</li>
<li> Creating dummy variables.</li>
</ul>

<h2> Model Development </h2>
<ul> 
<li> Split the data set into train and test subsets</li>
<li> Applied Random Forest using the RandomForestClassifier package and fit() method.</li>
<li> Predicted furture customers on test data using the predict() method </li>
</ul>

<h2> Model Evaluation </h2>

Accuracy score was calculated to determine the goodness of the model. 

<ul>
<li> Accuracy score for Random Forest: 87% </li>
</ul>
