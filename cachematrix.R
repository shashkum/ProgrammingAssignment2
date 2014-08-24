## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## Writing functions that cache the inverse of a matrix
## Creating an object that can cache its inverse

makeCacheMatrix <- function(x=matrix()) {
    
	## Initializing inverse property
	m <- NULL

	## Method setting the matrix
   	set <- function(y) {
        	x <<- y
        	m <<- NULL
    	}
    	
	## Getting the matrix
	get <- function() {
		## Returning the matrix
		x
	}
    
	## Method setting inverse of matrix
	setInverse <- function(inverse) {
		m <<-inverse
	}
    
	## Method getting the inverse
	getInverse <- function() {
		## Method returning the inverse
		m
	}
    
	## ## Returning list of methods
	list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Computes the inverse of the matrix returned
## by makeCacheMatrix(), unless the inverse has
## already been calculated, in which case
## it retrieves it from the cache.

cacheSolve <- function(x, ...) {
	
	## Returning a matrix which is the inverse of 'x'    
	m <- x$getInverse()

	## Returning the inverse if it is already set
    	if ( ! is.null(m)) {
        print("getting cached data")
        return(m)
    	}
    
	## Getting the matrix from object
	m <- solve(x$get())
    	
	## Setting the inverse to object
	x$setInverse(m)
    
	## Returning the matrix
	m
}
