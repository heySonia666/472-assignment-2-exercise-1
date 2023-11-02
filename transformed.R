library(dplyr)
transform_data <- function(data, transformation_type = "increase_disp") {
  # Check if the necessary columns exist in the dataset
  required_columns <- c("disp", "mpg", "wt")
  if (!all(required_columns %in% colnames(data))) {
    stop("The dataset must contain the following columns: disp, mpg, wt.")
  }
# Apply different transformations based on the value of transformation_type
  if (transformation_type == "triple") {
    # Increase the Displacement ('disp') of each car by 200%
    data <- data %>%
      mutate(disp = disp * 3)
  } else if (transformation_type == "square") {
    # Increase the Displacement ('disp') of each car by 100%
    data <- data %>%
      mutate(disp = disp ^ 2)
  } else if (transformation_type == "sqrt") {
     # Square the Displacement ('disp') of each car
    data <- data %>%
      mutate(disp = sqrt(disp))
  } else {
    stop("Invalid transformation type. Please choose 'triple', 'double', or 'square'.")
  }
  
  # Return the transformed dataset
  return(data)
}

# Example usage with the mtcars dataset
transformed_data_triple <- transform_data(mtcars, "triple")
print(transformed_data_triple)

transformed_data_square <- transform_data(mtcars, "square")
print(transformed_data_square)

transformed_data_sqrt <- transform_data(mtcars, "sqrt")
print(transformed_data_sqrt)