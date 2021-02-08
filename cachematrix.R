## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  #set the matrix
  setmatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  #Retrieve the matrix
  getmatrix <- function() {
    x
  }
  
  #calculate the inverse of matrix
  cacheInverseM <- function(matrix){
    m <<- solve(matrix)
    
  } 
  
  #retrieve cached inverse matrix
  getCacheM <- function() {
    
    m
    
  }
  
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       cacheInverseM = cacheInverseM,
       getCacheM = getCacheM)
  
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  m <- x$getCacheM()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$getmatrix()
  m <- solve(data, ...)
  x$cacheInverseM(m)
  
  m
  
  ## Return a matrix that is the inverse of 'x'
}
