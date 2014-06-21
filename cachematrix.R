## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

       makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        ## The set function is used to create a matrix 
        get <- function() x
        ## The get function is to retrieve the matrix just created
        setinversion <- function(solve) m <<- solve
        ## This function is to calculate the inversion of matrix by using solve function
        getinversion <- function() m
        ## Retrive the inversion and store it to variable m
        list(set = set, get = get,
             setinversion = setinversion,
             getinversion = getinversion)
}



## Write a short comment describing this function

        cacheSolve <- function(x, ...) {
        m <- x$getinversion()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        ## Check if the inversion for matrix has been calculated or not.
        ## If has been calculated, the m value would directly retrieved.
        data <- x$get()
        m <- solve(data, ...)
        x$setinversion(m)
        ## If the inversion has not been calculated, it would be calculated here.
        ## And inversed matrix would be stored to m
        m
        ## Return a matrix that is the inverse of 'x'
}
