## The below functions are used to create and store an invertable matrix, 
## and then to call the matrix inverse

## makeCacheMatrix is a function that is used to create an invertable matrix.
## It is really a list of four functions: 1) set() sets the value of the matrix; 
## 2) get() calls the matrix; 3) setinv() sets the inverse of the matrix; and
## 4) getinv() gets the value of the matrix

makeCacheMatrix <- function(x = matrix()) {
                s <- NULL
                set <- function(y) {
                      x <<- y
                      m <<- NULL
                }
                get <- function() x
                setinv <- function(solution) s <<- solution
                getinv <- function() s
                list(set = set, get = get, 
                     setinv = setinv, getinv = getinv)
}

## cacheSolve calculates the inverse of the stored matrix. It first checks
## to see if the inverse has already been calculated. If so, it returns the inverse
## from the cache,and the message. If not, it calculates the inverse and sets the
## inverse according to the setinv() function.

cacheSolve <- function(x, ...) {
        s <- x$getinv()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setinv(s)
        s
}

