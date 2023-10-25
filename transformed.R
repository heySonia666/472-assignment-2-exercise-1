# read and load the dataset "mtcars"
data("mtcars")
head(mtcars)

transform_data <- function(data) {
  # Check if the 'disp' column exists in the dataset
  if (!'disp' %in% colnames(data)) {
    stop("The dataset must contain an 'disp' column for Displacement.")
  }
  
  # a function that applies a simple transformation: increasing the Displacement ('disp') of each car by 100%.
  data$disp <- data$disp * 2
  
  # Return the transformed dataset
  return(data)
}

# Example usage with the mtcars dataset
transformed_data <- transform_data(mtcars)
print(transformed_data)