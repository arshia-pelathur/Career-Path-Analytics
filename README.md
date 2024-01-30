# Career-Path-Analytics

### Objective:
Understanding Salary Trends by Demographics and Experience

Using R to perform analysis and Visualization on data. Graphical representations are provided along with the code for the same. 

### Content Covered:

1. [Importing Libraries](#1-importing-Libraries)
2. [Handling missing values](#2-handling-missing-values)
3. [Exploratory Data Analysis](#3-EDA)<br>
       3.1. [Descriptive Statistics](#31-descriptive-statistics)<br>
       3.2. [Univariate Analysis](#32-univariate-analysis)<br>
       3.3. [Bivariate Analysis](#33-bivariate-analysis)

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

### 3.1 Descriptive Statistics
![Summary Statistics](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/DescriptiveStatistics.png)

Above shows the summary statistics of all the feature variable which contains in the data. With Min, Max, Mean, Median, 1st Quartile & 3rd Quartile of numerical features & number of entries of object variable.<br>
The numerical features are Age, years of experience and Salary. They are slightly skewed as there is difference between the mean and median in the data.<br>
The categorical features are Gender, Education Level and Job title.



### 3.2. Univariate Analysis

#### A. Age Distribution of Working Professionals<br>
![Age Distribution](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Age%20Distribution%20for%20Working%20Professionals.png)

Above figure shows the univariate analysis of employee ages plotted in histogram chart which uses ggplot package.The resulting plot, which is displayed below the code, shows the age distribution for working professionals. The x-axis represents employee ages, and the y-axis represents the number of employees. The histogram reveals the frequency of employees within certain age ranges, with each bar's height indicating the count of employees within that age bin. The plot visually suggests a diverse range of ages among the employees, with certain age ranges appearing more frequently than others.

#### B. Gender Distribution<br>
![Gender Distribution](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Gender%20Distribution.png)

Above figure shows the gender distribution pie chart. It processes a data frame to calculate the count and percentage of each gender. It then uses these calculations to generate a pie chart with ggplot2, assigning distinct colors to male and female categories. The chart shows a near-even gender split in the dataset, with females making up 52% and males 48%.

#### C. Employee Years of Experience Distribution<br>
![YearofExperience Distribution](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Years%20of%20Experience%20Distribution.png)

Above figure shows the histogram bar chart where it shows the distribution of years of experience in a dataset. The histogram is created using ggplot2, with the years of experience on the x-axis and frequency on the y-axis. It shows a wide range of experience levels among individuals in the dataset, with a higher frequency of individuals having fewer years of experience and gradually fewer individuals as the number of years of experience increases. This suggests that the dataset contains many entry-level or mid-level professionals and fewer individuals with extensive experience.


#### D. Salary Distribution<br>
![Salary Distribution](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Salary%20Distribution.png)

Above figure shows the histogram plot for salary distribution. The visualization, created using ggplot2 in R, represents salary on the x-axis and frequency on the y-axis. The histogram, colored in orange with black borders for each bin, suggests a right-skewed distribution where a larger number of individuals have lower salaries, with frequency decreasing as salary increases. This pattern often indicates that higher salaries are less common within the dataset.

#### E. Education Level<br>
![Salary Distribution](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Distribution%20of%20Education%20Level.png)

Above figure shows the bar plot where distribution of education levels within a dataset. The plot displays three categories: Bachelor's, Master's, and PhD. A significant majority, 60.1%, have Bachelor's degrees. Master's degree holders make up 26.3%, and PhD holders are the smallest group at 13.7%. This distribution suggests that the dataset primarily consists of individuals with undergraduate education, while postgraduate holders, especially PhDs, are less common.

#### F. Top 10 Job titles
![Salary Distribution](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Top%2010%20most%20common%20Job%20Titles.png)

Above figure shows the bar plot of job titles from a dataset. The script sorts job titles by their frequency, nd creates a bar plot using ggplot2. The resulting plot has job titles on the x-axis and their frequency on the y-axis. The most common job title appears to have a significantly higher frequency than the others, while the rest have a more gradual decline in frequency.


### 3.3. Bivariate Analysis
#### A. Top 10 highest paying Job Roles<br>
![Highest paying jobs](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Top%2010%20highest%20paying%20job%20roles.png)

This is a bar chart titled "Top 10 highest paying Job Roles". The x-axis represents different job titles, and the y-axis represents the average salary. The salaries in the dataset are below 250,000. The highest paying job in this dataset are CEO and Chief technology Officer at 250,000 each while the least paying jobs is Director of engineering.
       
#### B. Salary Distribution for job Roles with respect to Gender<br>
![Job Roles vs Gender](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Salary%20Distribution%20for%20job%20Roles%20with%20respect%20to%20Gender.png)

The median salary for both groups is above $100,000, with the median for the Female group being slightly lower than the Male group. The interquartile range (IQR) is narrower for the Female group compared to the Male group. This suggests that salaries for the Female group are more concentrated around the median, while the Male group has a more varied salary range. The upper quartile is higher for Males, which suggests that the salaries are higher. There are no visible outliers.

#### C. Salary Distribution for individuals with varying Educations<br>
![Salary vs Education](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Salary%20Distribution%20individuals%20with%20varying%20Educations.png)

Individuals with a PhD have higher salaries compared to those with a Master's or Bachelor's degree, as indicated by the position of the blue box (PhD) being generally higher on the salary axis. The median salary is also higher. The interquartile range (IQR) for PhD salaries is also larger, suggesting more variability in the salaries of individuals with a PhD. Individuals with a Bachelor's degree have the lowest median salary and the smallest IQR, indicating less variability in salaries compared to the other two education qualifications. There are several outliers for both the Master's and PhD categories, indicated by the dots outside the "whiskers" of the boxplots.


#### D. Scatterplot of Salary vs. Experience with Regression Line<br>
![Salary vs Experience](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Scatterplot%20of%20Salary%20vs.%20Experience%20with%20Regression%20Line.png)

There is a positive coerrelation between the age and salary. There is some variability around the regression line, indicating that while age is a factor, there are other factors that also affect salary since not all points fall directly on the line.


#### E. Scatterplot of Salary vs. Age with Regression Line<br>
![Salary vs Age](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Scatterplot%20of%20Salary%20vs.%20Age%20with%20Regression%20Line.png)

There is a positive correlation between years of experience and salary. The data points are more densely packed at the lower end of the experience scale, suggesting that there are more data entries for individuals with fewer years of experience. As experience increases, the data points spread out more, indicating a greater variance in salary at higher levels of experience. There are a few potential outliers, particularly at the higher end of the experience scale, where a small number of individuals have salaries that are significantly higher than others with similar experience.

#### F. Years of Experience vs Salary based on gender
![Experience vs Salary by Gender](https://github.com/arshia-pelathur/Career-Path-Analytics/blob/main/Years%20of%20Experience%20vs%20Salary%20based%20on%20gender.png)

There is a positive trend in the graph with a spread in salaries for both genders indicating an increase with experience, suggesting a wider range of salaries for individuals with more experience. There is no pattern in entry level experience. The highest salaries are for individuals with around 20-25 years of experience.
