setwd("C:\\Users\\IT24103569\\Desktop\\IT24103569")

branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
str(branch_data)

boxplot(branch_data$Sales_X1, main = "Boxplot of Sales",col = "pink" , horizontal = TRUE)

fivenum(branch_data$advertising)  
IQR(branch_data$advertising)

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25, na.rm = TRUE)
  Q3 <- quantile(x, 0.75, na.rm = TRUE)
  IQR_value <- IQR(x, na.rm = TRUE)
  
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_years <- find_outliers(branch_data$years)
print(outliers_years)
