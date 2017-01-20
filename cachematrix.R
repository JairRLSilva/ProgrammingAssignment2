## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

## A list is used in cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
  
  matriz <- NULL

  set <- function(y) {
    x <<- y
    matriz <<- NULL
  }
  
  get <- function() x
  
  setinv <- function(inverse) matriz <<- mean
  
  getinv <- function() matriz
  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## Write a short comment describing this function

## This function recive the output list of makeCacheMatrix()
## to return a inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matriz <- x$getinv()
  
  if(!is.null(matriz)) {
    message("Getting cache!")
    return(matriz)
  }
  
  data <- x$get()
  matriz <- solve(data, ...)
  
  x$setinv(matriz)
  
  return(matriz)
  
}


## Examples:

## Matrix
r = rnorm(100)
mat1 = matrix(r, nrow=10, ncol=10)


mat <- makeCacheMatrix(mat1)

cacheSolve(mat)





