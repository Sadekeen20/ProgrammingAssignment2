## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##we set the value of the matrix from the first function then we get the matrix value. Later we calculate the inverse and get the inverse of the matrix. 

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

#it will calculate the inverse but before that it will check if previously inverse was calculated(not null). It will skip computation if calculation was done before .Else the inverse will be calculated by setInverse function

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

