## These functions calculate the inverse of a given matrix and
## store the inverse for later retrival.
##
## When an inverse is requested a second or subsequent time the functions will
## return the cached value thereby saving computation time.
##
## The following functions have been adapted from similar functions
## in CachingMean.R provided in the R Programming course with Roger Peng et al.


## This function creates a vector of 4 functions. These functions set and get
## a matrix defined in this function space. Also setinverse and getinverse 
## record and retrieve the inverse of matrix x.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Reture the inverse matrix. Check to see if the inverse is cached and return
## cached value if it is. Otherwise calculate, cache
## and return the inverse matrix.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
