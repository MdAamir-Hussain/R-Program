binary_search <- function(arr, target) {
  low <- 1
  high <- length(arr)
  
  while (low <= high) {
    mid <- floor((low + high) / 2)
    if (arr[mid] == target) {
      return(mid)
    } else if (arr[mid] < target) {
      low <- mid + 1
    } else {
      high <- mid - 1
    }
  }
  return(-1) # Not found
}

# Example usage
arr <- c(1, 3, 5, 7, 9)
target <- 5
result <- binary_search(arr, target)
print(result)  # Output: 3

