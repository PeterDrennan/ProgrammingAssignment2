##The function makeCacheMatrix creates a matrix that stores its
##inverse in the cache. This countains these steps:
## set value
## get value
## set inverse
## get inverse

makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD
       m <- NULL
     set <- function(y) {
            x <<- y
             m <<- NULL
      }
       get <- function() x
       setinverse <- function(solve) m <<- solve
       getinverse <- function() m
       list(set = set, get = get,
            setinverse = setinverse,
            getinverse = getinverse)
 }
=======
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}
>>>>>>> 67301f6f9339b9e8574ca9d750a394bd8ac8f5f8

## CacheSolve calculates the inverse of the matrix from the previous 
##function. CacheSolve will get the inverse from the cache if it has
##already been solved, and if the matrix is still the same. 
cacheSolve <- function(x, ...) {
      m <- x$getinverse()
<<<<<<< HEAD
       if(!is.null(m)) {
             message("getting cached data")
             return(m)
       }
       data <- x$get()
       m <- solve(data, ...)
       x$setinverse(m)
       m
 }
=======
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}
>>>>>>> 67301f6f9339b9e8574ca9d750a394bd8ac8f5f8

##TEST IT OUT
z <- diag(8,4)
z
     [,1] [,2] [,3] [,4]
[1,]    8    0    0    0
[2,]    0    8    0    0
[3,]    0    0    8    0
[4,]    0    0    0    8

CachedMarix <- makeCacheMatrix(z)
 cacheSolve(CachedMarix)
      [,1]  [,2]  [,3]  [,4]
[1,] 0.125 0.000 0.000 0.000
[2,] 0.000 0.125 0.000 0.000
[3,] 0.000 0.000 0.125 0.000
[4,] 0.000 0.000 0.000 0.125

##returns inverse of the matrix
## for example
##this is the inverse - inverse of 8 is 1/7 or 0.125.

q <-diag(10,3)
q
     [,1] [,2] [,3]
[1,]   10    0    0
[2,]    0   10    0
[3,]    0    0   10
CachedMarix <- makeCacheMatrix(q)
cacheSolve(CachedMarix)
     [,1] [,2] [,3]
[1,]  0.1  0.0  0.0
[2,]  0.0  0.1  0.0
[3,]  0.0  0.0  0.1



