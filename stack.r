# Define a stack class
Stack <- list()

# Function to push an element onto the stack
push <- function(stack, element) {
  stack[[length(stack) + 1]] <- element
  return(stack)
}

# Function to pop an element from the stack
pop <- function(stack) {
  if (length(stack) == 0) {
    cat("Stack is empty. Cannot pop.\n")
    return(stack)
  }
  popped_element <- stack[[length(stack)]]
  stack[[length(stack)]] <- NULL
  return(list(popped_element, stack))
}

# Function to peek the top element of the stack
peek <- function(stack) {
  if (length(stack) == 0) {
    cat("Stack is empty.\n")
    return(NULL)
  }
  return(stack[[length(stack)]])
}

# Example usage
my_stack <- Stack
my_stack <- push(my_stack, 1)
my_stack <- push(my_stack, 2)
my_stack <- push(my_stack, 3)

print(my_stack)  # Output: [1] 1 2 3

top_element <- peek(my_stack)
print(top_element)  # Output: [1] 3

my_stack <- pop(my_stack)
print(my_stack)  # Output: [1] 1 2
