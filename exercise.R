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