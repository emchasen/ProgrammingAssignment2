## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
                s <- NULL
                get <- function() x
                #setinv <- function(solution) s <<- solution
                #getinv <- function() s
                list(get = get
                     #setinv = setinv,
                     #getinv = getinv
                     )
}

jcmake <- function(y = numeric()) {
        get <- function() y
        set <- function(value) {
                y <<- value
        }
        list(get = get, set = set)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getinv() #this is where my problem is
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setinv(s)
        s
}

