# read and load the dataset "mtcars"
library(dplyr)
transform_data <- function(data) {
  # Check if the 'disp' column exists in the dataset
  if (!'disp' %in% colnames(data)) {
    stop("The dataset must contain an 'disp' column for Displacement.")
  }
  
 # Use mutate to apply the transformation
  data <- data %>%
    mutate(disp = disp * 2)
  
  # Return the transformed dataset
  return(data)
}

# Example usage with the mtcars dataset
transformed_data <- transform_data(mtcars)
print(transformed_data)