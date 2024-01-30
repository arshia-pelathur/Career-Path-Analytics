install.packages('readxl')
install.packages('ggplot2')
install.packages('dplyr')
install.packages(('reshape2'))

library(readxl)
library(ggplot2)
library(dplyr)
library(reshape2)
# setting working directory to file location for easy access to data
setwd("C:/Users/ArshiaAchar/Desktop/AI & DS/Term2/DataVisualization - Ana/Assignment1")

data <- read.csv('Salary Data.csv')

# Data Exploration
View(data)           # observe data 
names(data)          # column names
head(data,3)         # top 3 rows of the dataset



#--------------------------------------------
# Missing values Analysis
na_vals <- colSums(is.na(data))           # Sum of missing values in each column
na_vals

# Observe rows with missing values
rows_with_na <- apply(is.na(data),1,any)     # checks if the row has atleast 1 missing value
data_with_na <- data[rows_with_na,]          # displays only the rows having atleast 1 missing value
View(data_with_na)                           # observe the dataset

# Removing these records
df <- na.omit(data)
rownames(df) <-NULL
View(df)         


# -------------------------------------------
# descriptive statistics of numeric features
# numeric_data <- df[sapply(df,is.numeric)]
summary <- summary(df)
summary

# -----------------------------------------------
# VISUALIZATIONS - Univariate Analysis


# 1. Age Distribution
plot_age <- ggplot(df, mapping = aes(x=Age)) +
            geom_histogram(data=df,bins=20,color='white',fill='purple') +
            theme_gray()   +
            ggtitle('Age distribution for working professionals')+
            xlab('Employee Ages') +
            ylab('Number of Employees')
plot_age


# 2. Gender Distribution

gender_df <- df %>% group_by(Gender) %>% summarise(Count = n())
gender_Per <- with(gender_df, Count/sum(Count) * 100)

plot_gender <- ggplot(gender_df,mapping = aes(x='',y=Count, fill = Gender)) + 
              geom_bar(width = 1, stat='identity') + 
              coord_polar('y') +
              geom_label(aes(label = paste0(round(gender_Per, 1), "%")), 
                              position = position_stack(vjust = 0.2)) +
              theme( axis.text.x = element_blank(),  # Remove axis text
                      axis.ticks = element_blank(),   # Remove axis ticks
                  ) +
              labs(fill='Gender',title='Gender Distribution') + 
              scale_fill_manual(values=c("Male" = "blue", "Female"="maroon"))
plot_gender
  

# 3. Years of Experience Distribution
plot_years_exp <- ggplot(df, aes(x=Years.of.Experience)) +
                  geom_histogram(bins=30, fill="darkgreen", color="White") +
                  theme_classic() +
                  ggtitle("Years of Experience Distribution") + 
                  labs(y="Frequency")

plot_years_exp


# 4. Salary Distribution
plot_salary <- ggplot(df, aes(x=Salary)) +
              geom_histogram(bins=30, fill="orange", color="black") +
              theme_minimal() +
              ggtitle("Salary Distribution") +
              labs(y="Frequency")

plot_salary

# 5. Education Level Bar Plot 
education_df <- df %>% group_by(Education.Level) %>% summarise(ValCount = n())
education_per = with(education_df,ValCount*100/sum(ValCount))
education_per

plot_edu <- ggplot(education_df, aes(x = Education.Level,y=ValCount)) +
            geom_bar(fill = "yellow", color = "black",stat='identity') +
            geom_label(aes(label = paste0(round(education_per,1) , '%'),
                       y=2*ValCount/3)) +
          labs(title = "Distribution of Education Level",
                  x = "Education.Level", y = "Number of Individuals") 
plot_edu

# 6. Frequency of Different Job Titles

job_title_counts <- sort(table(data$Job.Title), decreasing = TRUE)
job_title_df <- head(as.data.frame(job_title_counts),10)
job_title_df
plot_jobtitle <- ggplot(job_title_df, aes(x = Var1, y = Freq)) +
                  geom_bar(stat = "identity",fill='darkgreen',color='white') +
                  theme(axis.text.x = element_text(angle = 40, hjust = 1)) +
                  labs(x = "Job Title", y = "Frequency", title = "Top 10 most common Job Titles")
plot_jobtitle  

# --------------------------------------------------------
# BIVARIATE ANALYSIS

colnames(df)

# 1. Top 10 job titles using Average Salary for that role

top_jobs <- head(df %>% 
            group_by(Job.Title) %>%
            summarise(Average = mean(Salary)) %>%
            arrange(desc(Average)),10)
top_jobs

plot_topjobs <- ggplot(top_jobs, aes(x = Job.Title, y = Average)) +
                geom_bar(stat = "identity",fill='lightblue',color='black') +
                theme( axis.text.x = element_text(angle = 40, hjust = 1)
                       ) +
                labs(x = "Job Titles", 
                     y = "Average Salary", 
                     title = "Top 10 highest paying Job Roles") 
plot_topjobs  


# 2. Salary Distribution for different job roles by Gender
plot_salary_gender <- ggplot(df,aes(x=Gender, y=Salary,fill=Gender)) + 
                      geom_boxplot()+
                      labs(x ='Gender',y='Salary',
                           title='Salary Distribution for job Roles with respect to Gender' )

plot_salary_gender

# 3. Salary Distribution by Education Level
plt_salary_edu <- ggplot(df,aes(x=Salary, y=Education.Level, fill=Education.Level)) +
                  geom_boxplot() + 
                  labs(x='Salary',y='Education Level of individuals',
                       title = 'Salary Distribution for individuals with varying Educations')

plt_salary_edu
# 4. Age vs Salary with correlation

correlation <- cor(df$Age, df$Salary, use = "complete.obs")
correlation
plot_age_salary <- ggplot(df, aes(x = Age, y = Salary)) +
  geom_point() + 
  geom_smooth(method = "lm", color = "red") +  
  labs(title = "Scatterplot of Salary vs. Experience with Regression Line",
       x = "Age",
       y = "Salary") +
  theme_grey()


plot_age_salary



# 5. Years of Experience vs Salary with correlation
corr <- cor(df$Years.of.Experience,df$Salary,use='complete.obs')
plot_years_exp_salary <- ggplot(df, aes(x = Years.of.Experience, y = Salary)) +
                        geom_point() +
                        geom_smooth(method = "lm", color = "blue") +
                        labs(title = "Scatterplot of Salary vs. Experience with Regression Line",
                                x = "Years of Experience",
                                y = "Salary") +
                        theme_classic()
plot_years_exp_salary

# 6. Years of Experience vs Salary by Gender proportion


plot_exp_salary <- ggplot(df, aes(x=Years.of.Experience, y=Salary)) +
  geom_point(aes(color=Gender),size=2) +
  ggtitle("Years of Experience vs Salary based on gender") + 
  scale_color_manual(values = c("Male"="green","Female"="maroon"))

plot_exp_salary




