## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix and then 
## initializes all get set functions. it also
## creates placeholder to cache matrices

makeCacheMatrix <- function(x = matrix()) {
   invmat <- NULL
   set <- function(y) {
      x <<- y;
      invmat <<- NULL;
   }
   get <- function() x; 
   setinv <- function(inv) invmat <<- inv; 
   getinv <- function () invmat;
   list(set=set,get=get,setinv=setinv,getmean=getmean);
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   invmat <- x$getinv();
   if(!is.null(invmat)){
        message ("getting cached data");
        return invmat;
   }
   data <- x$get();
   invmat <- solve (data,...);
   x$setmean(invmat);
   invmat
}
