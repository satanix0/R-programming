vec <- c("East", "West", "North", "West", "East", "West", "North")
vec_fact <- factor(vec)
print(vec_fact)
typeof(vec_fact)

# Create a vector of colors
colors <- c("red", "green", "blue", "red", "green", "green")

# Convert the vector into a factor
colors_factor <- factor(colors)

# Print the factor
print(colors_factor)

sizes <- c(
    "small", "medium", "large", "large", "small",
    "small", "large", "medium", "large"
)
sizes_factor <- factor(sizes,
    ordered = TRUE,
    levels = c("large", "small", "medium")
)
print(sizes_factor)
