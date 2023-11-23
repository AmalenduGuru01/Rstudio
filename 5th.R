

# Parameters
a <- 0
b <- 60

# Calculate probability
prob_a <- 1 - punif(45, min = a, max = b)

# Print result
cat("Probability that waiting time is more than 45 minutes:", prob_a, "\n")



# Calculate probability
prob_b <- punif(30, min = a, max = b) - punif(20, min = a, max = b)

# Print result
cat("Probability that waiting time lies between 20 and 30 minutes:", prob_b, "\n")












# Parameters
lambda <- 1/2
x <- 3

# Calculate density function
density_at_x <- dexp(x, rate = lambda)

# Print result
cat("Density function at x =", x, ":", density_at_x, "\n")

# Generate x values
x_values <- seq(0, 5, length.out = 100)

# Calculate corresponding y values using the density function
y_values <- dexp(x_values, rate = lambda)

# Plot the graph
plot(x_values, y_values, type = "l", col = "blue", lwd = 2,
     xlab = "Repair Time (hours)", ylab = "Probability Density",
     main = "Exponential Probability Distribution")

# Calculate cumulative probability
prob_at_most_3 <- pexp(3, rate = lambda)

# Print result
cat("Probability that repair time takes at most 3 hours:", prob_at_most_3, "\n")

# Calculate cumulative probabilities
cumulative_probs <- pexp(x_values, rate = lambda)

# Plot the graph
plot(x_values, cumulative_probs, type = "l", col = "green", lwd = 2,
     xlab = "Repair Time (hours)", ylab = "Cumulative Probability",
     main = "Cumulative Exponential Probabilities")

# Simulate 1000 random numbers
simulated_data <- rexp(1000, rate = lambda)

# Plot the histogram
hist(simulated_data, breaks = 30, col = "orange", main = "Simulated Exponential Data",
     xlab = "Repair Time (hours)", ylab = "Frequency")



# Parameters
alpha <- 2
beta <- 1/3

# Calculate probability
prob_at_least_1 <- pgamma(1, shape = alpha, rate = beta, lower.tail = FALSE)

# Print result
cat("Probability that the lifetime is at least 1 unit of time:", prob_at_least_1, "\n")


# Given probability
target_probability <- 0.70

# Find c using quantile function
c_value <- qgamma(target_probability, shape = alpha, rate = beta)

# Print result
cat("The value of c such that P(X ≤ c) ≥ 0.70 is:", c_value, "\n")