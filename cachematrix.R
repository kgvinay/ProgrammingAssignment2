## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve  ## Solve Creates Inverse of a matrix and Set it.
  getmatrix<-function() m  ## Get Stored matrix
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m<-x$getmatrix()
  if(!is.null(m)){  ## If Matrix is Cached
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...) ## Compute Inverser of a Matrix
  x$setmatrix(m)
  m
}
