## Put comments here that give an overall description of what your

## functions do
# My functions are trying to do what's described in the assignment.
# Instead of taking the mean in the MakeVector example, I changed it to an inverse.


## Write a short comment describing this function
#


makeCacheMatrix <- function(x = matrix()) {
  
    inversem <- NULL
    set <- function(y) {
      x <<- y
      inversem <<- NULL
    }
    #Above creates the cache while below creates the inverse.
    get <- function() x
    setinverse <- function(solve) inversem <<- solve
    getinverse <- function() inversem
    list(set= set, 
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}





## Write a short comment describing this function
#Like the other mean language that was provided, I simply changed it to inverse.
#This should provide the inverse 


cacheSolve <- function(x, ...) {
  
    inversem <- x$getinverse()
    if(!is.null(inversem)) {
      message("getting cached data")
      return(inversem)
    }
    data <- x$get()
    inversem <- solve(data, ...)
    x$setinverse(inversem)
    inversem
 
  
  ## Above returns a matrix that is the inverse of 'x'
  ## If the inverse has already been created then cacheSolve will retrieve the inverse of makeCacheMatrix
}

