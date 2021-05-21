## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  
  
  ## Initialize the inverse
  inv <- NULL
  
  ## Set the matrix
  set <- function( matrix ) {
    mat <<- matrix
    inv <<- NULL
  }
  
  ## Get the matrix
  get <- function() {
    mat
  }
  
  ## Set the inverse matrix
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  
  ## Get the inverse matrix
  getInverse <- function() {
    inv
  }
  
  ## List of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  mat <- x$getInverse()
  
  ## Just return the inverse if its already set
  if( !is.null(mat) ) {
    message("Alright! Alright! Getting cached data")
    return(mat)
  }
  
  ## Get the matrix from our object
  data <- x$get()
  
  ## Calculate the inverse using matrix multiplication
  mat <- solve(data) %*% data
  
  ## Set the inverse to the object
  x$setInverse(mat)
  
  ## Return the matrix
  mat
}
