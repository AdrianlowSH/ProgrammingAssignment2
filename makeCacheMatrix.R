## Put comments here that give an overall description of what your
## functions do

## MakeCacheMatrix consist of four functions encapsulated in a list
## 1. Set Matrix
## 2. Get Matrix
## 3. Set inverse of the Matrix
## 4. Get inverse of the Matrix


makeCacheMatrix <- function(x = matrix()) {

  #Intially set inv to NULL
  inv <- NULL
  
  # Set the value of the matrix as well as clearing the any
  # data from the cache
  set <- function (y){
    # Set the value for matrix
    x <<- y 
    inv <<- NULL
  }

  # Get the value of the matrix X
  get <- function() x
  
  # Initial setup of inverse
  setinverse <- function(inverse) inv <<- inverse
  
  # Get the inverse
  getinverse <- function() inv
  
  # Encapsulate into a list
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}