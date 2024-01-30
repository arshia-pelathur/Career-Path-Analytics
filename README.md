# Career-Path-Analytics

### Objective:
Understanding Salary Trends by Demographics and Experience

Using R to perform analysis and Visualization on data. Graphical representations are provided along with the code for the same. 

### Content Covered:

1. [Importing Libraries](#importing-Libraries)
2. [Handling missing values](#handling-missing-values)
3. [Exploratory Data Analysis](#EDA)<br>
       3.1. [Descriptive Statistics](#descriptive-statistics)<br>
       3.2. [Univariate Analysis](#univariate-analysis)<br>
       3.3. [Bivariate Analysis](#bivariate-analysis)

## 1. Importing Libraries
Below packages were installed and imported for this analysis:

       - readxl: Read and import Excel files into R.
       - ggplot2: Create static, animated, and interactive data visualizations in R.
       - dplyr: Perform data manipulation and transformation in R.
       - reshape2: Reshape and transform data in R.

## 2. Handling Missing Values
There are 6 features in the data:
<br> 1. Age
<br> 2. Gender
<br> 3. Education Level
<br> 4. Job Title
<br> 5. Years of Experience
<br> 6. Salary

Missing values in any row were observed and these rows were dropped before proceeding with Visualizations.

## 3. EDA
Exploratory Data Analysis on the cleaned data was performed.

![Summary Statistics](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/DescriptiveStatistics.png)

Above shows the summary statistics of all the feature variable which contains in the data. With Min, Max, Mean, Median, 1st Quartile & 3rd Quartile of numerical features & number of entries of object variable.<br>
The numerical features are Age, years of experience and Salary. They are slightly skewed as there is difference between the mean and median in the data.<br>
The categorical features are Gender, Education Level and Job title.



### 3.1 Descriptive Statistics

#### A. Age Distribution of Working Professionals<br>
![Age Distribution](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Age%20Distribution%20for%20Working%20Professionals.png)

Above figure shows the univariate analysis of employee ages plotted in histogram chart which uses ggplot package.The resulting plot, which is displayed below the code, shows the age distribution for working professionals. The x-axis represents employee ages, and the y-axis represents the number of employees. The histogram reveals the frequency of employees within certain age ranges, with each bar's height indicating the count of employees within that age bin. The plot visually suggests a diverse range of ages among the employees, with certain age ranges appearing more frequently than others.

#### B. Gender Distribution<br>



#### C. Employee Years of Experience Distribution<br>



#### D. Salary Distribution<br>



#### E. Education Level<br>



#### F. Top 10 Job titles



### 3.2. Univariate Analysis


### 3.3. Bivariate Analysis
