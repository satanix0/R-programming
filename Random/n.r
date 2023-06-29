## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    # Initialize the matrix and inverse variables
    inv <- NULL

    # Function to set the matrix value and invalidate the inverse cache
    set <- function(mat) {
        x <<- mat
        inv <<- NULL
    }

    # Function to get the matrix value
    get <- function() {
        x
    }

    ## Method to set the inverse of the matrix
    setInverse <- function(inverse) {
        inv <<- inverse
    }
    # Function to get the inverse of the matrix
    getInverse <- function() {
        # Return the computed inverse
        inv
    }

    # Create and return a list of functions
    list(
        set = set, get = get,
        setInverse = setInverse, getInverse = getInverse
    )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    # Get the matrix from the cache
    matrix <- x$getInverse()

    # Check if the inverse is already cached
    if (!is.null(matrix)) {
        message("Returning cached inverse")
        return(matrix)
    }
    ## Get the matrix from our object
    val <- x$get()

    # Compute the inverse using matrix multiplication
    matrix <- solve(val) %*% val

    # Cache the inverse
    message("Caching inverse")
    x$setInverse(matrix)

    # Return the computed inverse
    matrix
}
