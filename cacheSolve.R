## Write a short comment describing this function

cacheSolve <- function(x, ...){
  ## Return a matrix that is the inverse of 'x'
  # Get the current state of the inverse and see if it has been computed yet
  inv <- x$getinverse()
  
  # If it has
  if(!is.null(inv)){
    #Return the existing value
    message("Getting cached matrix")
    return(inv)
  }
  
  # If it hasn't, compute matrix
  data <- x$get()
  
  # Find inverse
  inv <- solve(data, ...)
  
  #Cache result in object
  x$setinverse(inv)
  
  #Return this result
  inv
}
