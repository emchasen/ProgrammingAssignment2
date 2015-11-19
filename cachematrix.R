## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        function(x = matrix()) {
                s <- NULL
                set <- function(y) {
                        x <<- y
                        s <<- NULL
                }
                get <- function() x
                setinv <- function(solve) s <<- solve
                getinv <- function() s
                list(set = set, get = get,
                     setinv = setinv,
                     getinv = getinv)
        }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(s)
        s
}
}

# This is a change