# (a) Import the csv data file in R
file_path <- "C:\\Users\\rhyth\\Downloads\\Clt-data.csv"  # Replace with the actual path to your CSV file

# Assuming your CSV file has a header, you can use read.csv
pipe_data <- read.csv(file_path)

# (b) Validate data for correctness
# Check the number of rows
num_rows <- nrow(pipe_data)
cat("Number of Rows:", num_rows, "\n")

# View the top ten rows of the dataset
head(pipe_data, 10)

# (c) Calculate the population mean
mean_value <- mean(pipe_data$WallThickness)

# Plot the histogram
hist(pipe_data$WallThickness, main = "Histogram of Wall Thickness", xlab = "Wall Thickness", ylab = "Frequency", col = "lightblue", border = "black")

# (d) Mark the mean using abline
abline(v = mean_value, col = "red", lty = 2, lwd = 2)

# Add a legend
legend("topright", legend = paste("Mean =", round(mean_value, 2)), col = "red", lty = 2, lwd = 2)

# Draw samples of size 10
sample_size_10 <- replicate(1000, mean(sample(pipe_data$WallThickness, 10)))

# Plot the histogram
hist(sample_size_10, main = "Histogram of Sample Means (Size 10)", xlab = "Sample Mean", ylab = "Frequency", col = "lightblue", border = "black")

# Draw samples and calculate means for different sample sizes
sample_size_50 <- replicate(1000, mean(sample(pipe_data$WallThickness, 50)))
sample_size_500 <- replicate(1000, mean(sample(pipe_data$WallThickness, 500)))
sample_size_9000 <- replicate(1000, mean(sample(pipe_data$WallThickness, 9000)))

# Plot histograms for different sample sizes
par(mfrow = c(2, 2))  # Arrange plots in a 2x2 grid

hist(sample_size_50, main = "Histogram of Sample Means (Size 50)", xlab = "Sample Mean", ylab = "Frequency", col = "lightblue", border = "black")
hist(sample_size_500, main = "Histogram of Sample Means (Size 500)", xlab = "Sample Mean", ylab = "Frequency", col = "lightblue", border = "black")
hist(sample_size_9000, main = "Histogram of Sample Means (Size 9000)", xlab = "Sample Mean", ylab = "Frequency", col = "lightblue", border = "black")

par(mfrow = c(1, 1))  # Reset to single plot layout
