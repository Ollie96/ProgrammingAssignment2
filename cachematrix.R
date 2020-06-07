## Put comments here that give an overall description of what your
## functions do

## Q1 makeCacheMatrix

## First set the input x as a matrix
## then set the inverse value "inv" as a null
## finaly changed every reference to "mean" to "Inverse"
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  setInverse <- function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Q2 cacheSolve


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## Like above changed "mean" to "inverse" and additionaly "m" to "inv"
  inv <- x$getInverse()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setsolve(inv)
  inv
}

