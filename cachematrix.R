## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix takes argument 'x' of the matrix
## and create an object with 4 functions that can make the following operations on 'x':
## store 'x', retrieve 'x', calculate and cache inverse of 'x' and retrieve inverse of 'x' from cache 
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m 
    list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function

#cacheSolve returns the inverse of a matrix, it will check if previously inverse was calculated(not null). 
#It will skip computation if calculation was done before .Else the inverse will be calculated by setInverse function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    m <- x$getInverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    mat <- x$get()
    m <- solve(mat,...)
    x$setInverse(m)
    m
}

