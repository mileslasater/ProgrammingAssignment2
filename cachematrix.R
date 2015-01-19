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

}


## The cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve retrieves
## the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
