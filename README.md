<h1> Data Science Project Overview: Drinking Habit Analysis </h1>

<b> The goal of the project is to predict the total alcohol consumption by country to assist a new wine
and brewery establishment determine their inventory. </b>

<ul>
<li>Exploratory data analysis has been conducted to gain a detailed understanding of the entire dataset.</li>
<li>Simple and multiple linear regression models have been applied to predict the total_litres_of_pure_alcohol.</li>
<li>Models have been evaulated numerically and visually to check the validity of the predictions.</li>
</ul>

<h1> Code and Resources Used </h1> 
<b>Python Version:</b> 3.7.4<br>
<b>Packages:</b> Pandas, NumPy, Seaborn, Sci-Kit Learn, and Matplotlib<br>
<b>Data Analysis Course:</b> <a href="https://www.edx.org/course/analyzing-data-with-python">Analyzing data with Python</a><br>
<b>Dataset:</b> <a href = "https://bit.ly/2L6o6ak" >Drinks.csv</a>

<h1>Project Walk-Through</h1>
<a href="https://link.medium.com/hUSg4spHi6">Simple and Multiple Linear Regression in Python</a>

<h1>Exploratory Data Analysis</h1>

![alt text](https://github.com/mon2barot/universe/blob/master/images/DataTypes.JPG "Data types of each column") 
![alt text](https://github.com/mon2barot/universe/blob/master/images/Alcohol%20By%20Continent.JPG "Alochol types by continent")
![alt text](https://github.com/mon2barot/universe/blob/master/images/Boxplot.JPG "Boxplot for beer by continents")

<h1> Variable Selection </h1>

Determined the correlation between the total_litres_of_pure_alcohol and the other types of alcohol servings
to select one predictor variable for simple linear regression.

<h1> Model Development </h1>

Two models were applied
<ul>
<li>Simple Linear Regression</li>
<li>Multiple Linear Regression</li>
</ul>

<h1> Model Evaluation </h1>

R-sqaured was used to determine the accuracy of the models.
<ul>
<li>R-squared for Simple Linear Regression: 70% </li>
<li>R-squared for Multiple Linear Regression: 75%</li>
</ul>

Additionaly, models were evaluated based on visualizations. A residual plot was created to evaluate
Simple Linear Regressiona and a distriution plot was created for Multiple Linear Regresssion.

<b><i> Finally the predictions were made for the total_litres_of_alcohol using the predict() method
to assist the new wine and brewery establishment in managing thier inventory and distribution</i></b>
