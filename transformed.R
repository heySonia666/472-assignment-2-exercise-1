transform_data <- function(data, transformation_type = "increase_disp") {
  # Check if the necessary columns exist in the dataset
  required_columns <- c("disp", "mpg", "wt")
  if (!all(required_columns %in% colnames(data))) {
    stop("The dataset must contain the following columns: disp, mpg, wt.")
  }
  
  transformed_data <- data
  
  if (transformation_type == "increase_disp") {
    # Increase the Displacement ('disp') of each car by 100%.
    transformed_data$disp <- transformed_data$disp * 2
    
  } else if (transformation_type == "decrease_mpg") {
    # Decrease the miles per gallon by 20%
    transformed_data$mpg <- transformed_data$mpg * 0.8
    
  } else if (transformation_type == "increase_weight") {
    # Increase the weight by 10%
    transformed_data$wt <- transformed_data$wt * 1.1
    
  } else {
    stop("Invalid transformation type. Please choose from 'increase_disp', 'decrease_mpg', or 'increase_weight'.")
  }
  
  # Return the transformed dataset
  return(transformed_data)
}

# print the transformed mtcars dataset
transformed_data_disp <- transform_data(mtcars, "increase_disp")
print("Increased Horsepower:")
print(transformed_data_disp)

transformed_data_mpg <- transform_data(mtcars, "decrease_mpg")
print("Decreased MPG:")
print(transformed_data_mpg)

transformed_data_wt <- transform_data(mtcars, "increase_weight")
print("Increased Weight:")
print(transformed_data_wt)
