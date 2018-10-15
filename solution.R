# Load our dataset
iris_df <- data.frame(iris)

# Write a function `get_greater_average` that takes in two species name and a column name
# as parameters and returns a sentence that describes which species has a greater average
# for that column.
# Examples:

# get_greater_average('setosa', 'virginica', 'Sepal.Length')
# => "The species with the larger Sepal.Length is virginica ( avg =  6.588 ) compared to setosa ( avg =  5.006 )"

# get_greater_average('virginica', 'setosa', 'Sepal.Length')
# => "The species with the larger Sepal.Length is virginica ( avg =  6.588 ) compared to setosa ( avg =  5.006 )"

# get_greater_average('versicolor', 'setosa', 'Petal.Width')
# => "The species with the larger Petal.Width is versicolor ( avg =  1.326 ) compared to setosa ( avg =  0.246 )"



# First, break it down into steps   ----

# We want to define the function with three parameters: species_1_name, species_2_name, and col.name

# GOAL: Get the average value for one column of species 1.
# First, we want to get the data for species 1.
# Then, we want to get the data for one column of species 1.
# Finally, we want to calculate the average for one column of species 1.

# GOAL: Get the average value for one column of species 2.
# First, we want to get the data for species 2.
# Then, we want to get the data for one column of species 2.
# Finally, we want to calculate the average for one column of species 2.

# GOAL: Return our result.
# If the average for species 1 is larger,
# Then paste together some strings to get the output!
# If the average for species 2 is larger,
# Then paste together some strings to get the output!



# Now, put that vision into code!

get_greater_average <- function(species_1_name, species_2_name, col.name) {
  # GOAL: Get the average value for one column of species 1.
  # First, we want to get the data for species 1.
  species_1 <- iris_df[iris_df$Species == species_1_name, ]
  
  # Then, we want to get the data for one column of species 1.
  species_1_data <- species_1[, col.name]
  
  # Finally, we want to calculate the average for one column of species 1.
  species_1_avg <- mean(species_1_data)
  
  
  # GOAL: Get the average value for one column of species 2.
  # First, we want to get the data for species 2.
  species_2 <- iris_df[iris_df$Species == species_2_name, ]
  
  # Then, we want to get the data for one column of species 2.
  species_2_data <- species_2[, col.name]
  
  # Finally, we want to calculate the average for one column of species 2.
  species_2_avg <- mean(species_2_data)
  
  
  # GOAL: Return our result.
  # If the average for species 1 is larger,
  if(species_1_avg > species_2_avg) {
    # Then paste together some strings to get the output!
    return(
      paste('The species with the larger', col.name, 'is', species_1_name, '( avg = ', species_1_avg, ')',
            'compared to', species_2_name, '( avg = ', species_2_avg, ')')
    )
  }
  
  # If the average for species 2 is larger,
  else {
    # Then paste together some strings to get the output!
    return (
      paste('The species with the larger', col.name, 'is', species_2_name, '( avg = ', species_2_avg, ')',
            'compared to', species_1_name, '( avg = ', species_1_avg, ')')
    )
  }
}



# Okay, now test it! ----

get_greater_average('setosa', 'virginica', 'Sepal.Length')
get_greater_average('virginica', 'setosa', 'Sepal.Length')
get_greater_average('versicolor', 'setosa', 'Petal.Width')