## Coursera Course: R Programming
## by Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD

## Homework assignment #2
## Submitted by Miles Lasater
## This assignment is more fully described in
##     https://class.coursera.org/rprog-010/human_grading/view/courses/973491/assessments/3/submissions
## and also in the README of this repository


## Matrix inversion is usually a costly computation and their may be some benefit to caching the inverse of
## a matrix rather than compute it repeatedly
## The makeCacheMatrix function creates a "special" matrix that contians functions and data that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL

    #set function to store the matrix
    set <- function(y) {
      x <<- y
      inverse <<- NULL
    }
    
    #get function to retreive the matrix
    get <- function() x
    
    #create the inverse and set it
    setinverse <- function(i) {inverse <<- i}
    
    #retreive the inverse of the matrix that was set by setinverse
    getinverse <- function() inverse
  
    #return the "special" matrix object which is really a list of functions
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
  

## The cacheSolve function computes the inverse of the special "matrix" (which is really a list) returned by
## makeCacheMatrix above.  If the inverse has already been calculated (and the matrix has not changed), then
## cacheSolve retrieves the inverse from the cache.

cacheSolve <- function(x = matrix(), ...) {

  #### ADD CODE TO CHECK FOR INDENTICAL
  #   if( ! identical( mat1, mat2 )
  ##already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache

  # return with the cached inverse if it exists
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  # otherwise, calculate inverse, set it (to save for next time) and return answer
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  inverse
}
