linear_search <- function(arr, target) {
  for (i in 1:length(arr)) {
    if (arr[i] == target) {
      return(i)  # Return the index where the target is found
    }
  }
  return(-1)  # Return -1 if target is not found
}

# Example usage
arr <- c(3, 6, 1, 9, 2, 5)
target <- 9
result <- linear_search(arr, target)
if (result == -1) {
  cat("Target", target, "not found in the array.")
} else {
  cat("Target", target, "found at index", result)
}
