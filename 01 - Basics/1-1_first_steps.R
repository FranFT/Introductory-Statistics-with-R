# Defining an array of weights for 6 people
weight <- c(60, 72, 57, 90, 95, 72)

# Defining an array of heights for 6 people
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)

# Calculate the BMI
bmi <- weight / height^2

# Plot the height vs weight
plot(height, weight)

# Drawing a line of expected weight/height ratio for a BMI of 22.5
hh <- c(1.65, 1.70, 1.75, 1.80, 1.85, 1.90)
lines(hh, 22.5 * hh^2)
