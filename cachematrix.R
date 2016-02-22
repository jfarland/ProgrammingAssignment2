## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Pretty Straightforward to see how the example functions can  be applied to matrix objects


makeCacheMatrix <- function(x = matrix()) {
  #initialize
  inv <- NULL
  #cross environment
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(g, ...)  {
  inv <- g$getinverse()
  
  
  if(!is.null(inv)) {
    message("fetching...")
    return(inv)
  }
  data <- g$get()
  inverse <- solve(data)
  g$setinverse(inverse)
  inverse
}
