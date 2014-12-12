## Functions to create a matrix object with the capability of caching its inverse 

## makeCacheMatrix() creates the matrix object from a provided matrix "x"
## there is also a local variable, "inv" for storing the inverse of the matrix "x"
## there are getter and setter functions defined for both "x" and "inv"
## a list of these getters and setters are returned at the completion of the function

makeCacheMatrix <- function(x = matrix()) {
    
    inv <- NULL
    
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    get <- function() {x}
    
    setinverse <- function(inverse) {inv <<- inverse}
    
    getinverse <- function() {inv}
    
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

}
