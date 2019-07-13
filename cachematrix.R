## This function gives out four properties of a matrix and return in the form of list 
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL ##default value
        set <- function(y) { ##store the input matrix in x, and it will only run when it is called by cache functions
                x <<- y
                i <<- NULL
        }
        get <- function() {x} ##obtain the matrix
        setinverse <- function(inverse) {m <<- inverse} ## set the inverse
        getinverse <- function(){m}  ## get the inverse 
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}

## This function calls makeCacheMatrix to return the inverse of the input matrix. If it is not cached, then the next function will calculate the inverse version
      
    i <- x$getinverse()               # get the matrix x out
    if(!is.null(i)) {              # if inverse was already cached (not NULL and is a matrix) 
        message("getting cached data") 
        return(i)                       
                        
    }
    data <- x$get()        # we reach this code only if x$getinverse() returned NULL
    i <- solve(data, ...)   # if m was NULL then we have to calculate the inverse
    i$setinverse(i)           # store the calculated inverse value in x (see setinverse() in makeCacheMatrix
    i               # return the inverse to the code that called this function

}
