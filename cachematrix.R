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


## cacheSolve() finds the inverse matrix of the supplied list from makeCacheMatrix()
## it first checks if there is already an inverse stored in the object 
## if the inverse already exists the function returns with that value
## otherwise it calculates the inverse, stores it in the object and returns the value

cacheSolve <- function(x, ...) {
    
    inv <- x$getinverse()
    
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    mtrx <- x$get()
    inv <- solve(mtrx)
    x$setinverse(inv)
    return(inv)
}
