# Set the seed for reproducibility
set.seed(123)

# Parameters
n <- 100
df <- n - 1

# Generate random samples from t-distribution
t_samples <- rt(n, df)

# Plot the histogram
hist(t_samples, main = "Histogram of t-distribution", xlab = "Value", ylab = "Frequency", col = "lightblue", border = "black")



# Set the seed for reproducibility
set.seed(123)

# Parameters
n <- 100
df_values <- c(2, 10, 25)

# Use sapply to generate random samples
chi_square_samples <- sapply(df_values, function(df) rchisq(n, df = df))

# Display the generated samples
print(chi_square_samples)



# Generate a vector of 100 values between -6 and 6
x <- seq(-6, 6, length.out = 100)

# Degrees of freedom
df_values <- c(1, 4, 10, 30)

# Calculate t-distribution values for each degree of freedom
t_values <- sapply(df_values, function(df) dt(x, df))

# Plot the density functions
plot(x, t_values[, 4], type = "l", col = "blue", lwd = 2,
     main = "Student's t-Distribution Density Function",
     xlab = "x", ylab = "Density", ylim = c(0, 0.4))

# Add lines for other degrees of freedom
lines(x, t_values[, 1], col = "red", lwd = 2)
lines(x, t_values[, 2], col = "green", lwd = 2)
lines(x, t_values[, 3], col = "purple", lwd = 2)

# Add legend
legend("topright", legend = c("df = 1", "df = 4", "df = 10", "df = 30"),
       col = c("red", "green", "purple", "blue"), lwd = 2, cex = 0.8)




# Degrees of freedom
df1 <- 10
df2 <- 20

# Percentile to find (95th percentile)
percentile <- 0.95

# Find the quantile (percentile) of the F-distribution
f_quantile <- qf(percentile, df1, df2)

# Display the result
print(f_quantile)



# Degrees of freedom
df1 <- 10
df2 <- 20

# Interval [0, 1.5]
lower_limit <- 0
upper_limit1 <- 1.5

# Calculate the probability for the interval [0, 1.5]
area_interval1 <- pf(upper_limit1, df1, df2) - pf(lower_limit, df1, df2)

# Interval [1.5, +∞)
lower_limit2 <- 1.5

# Calculate the probability for the interval [1.5, +∞)
area_interval2 <- 1 - pf(lower_limit2, df1, df2)

# Display the results
print(paste("Area under the curve for [0, 1.5]:", area_interval1))
print(paste("Area under the curve for [1.5, +∞):", area_interval2))

# Degrees of freedom
df1 <- 10
df2 <- 20

# Probabilities (quantiles) to find
probabilities <- c(0.25, 0.5, 0.75, 0.999)

# Calculate and display the quantiles for the given probabilities using cat
for (prob in probabilities) {
  f_quantile <- qf(prob, df1, df2)
  cat("Quantile for probability", prob, ":", f_quantile, "\n")
}


# Set the seed for reproducibility
set.seed(123)

# Degrees of freedom
df1 <- 10
df2 <- 20

# Generate 1000 random values from the F-distribution
f_random_values <- rf(1000, df1, df2)

# Plot a histogram
hist(f_random_values, main = "Histogram of F-distribution", xlab = "Value", ylab = "Frequency", col = "lightblue", border = "black")
