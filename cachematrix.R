## Put comments here that give an overall description of what your
## functions do

## This function yields a matrix that can be called on by a function that later yields the inverse

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y) {
	x <<- y
	inverse <<- NULL}
get <- function() x
setinverse <- function(INV) inverse <<- INV
getinverse <- function(inverse)

list(set = set, get=get, setinverse = setinverse, getinverse = getinverse)
}


## This function takes the Cahce Matrix and determines if an inverse is calculable. 
## If such a value is found and it differs from the original, the inverse is given. 
## If not, the default value is given.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inverse <- x$getinverse()
		if(!is.null(inverse)) {
			message("getting cached data!")
			return(inverse) }
	
	data <- x$get()
	inverse <- solve(data, ...)
	x$setinverse(inverse)
	inverse
}
