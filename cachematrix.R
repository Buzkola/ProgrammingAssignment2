## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##the makeCacheMatrix function consist of set, get , setInverse, getInverse
makeCacheMatrix<-function(x= matrix()){
      inv<- NULL
      set<-function(y){
            x<<-y
            inv<<-NULL
      }
      get<- function(){x}               #Acquire matrix x
      setInverse<- function(inverse){inv<<- inverse}
      getInverse<- function(){inv}
      list(set= set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
##Here we check the cache data that we have stored and makes use of it. 
cacheSolve<- function(x, ...){
      inv<- x$getInver()
      if(!is.null(inv)){
            message("getting cached data")
            return(inv)
      }
      mat<-x$get()
      inv<-solve(mat, ...)
      x$setInverse(inv)
      inv
}
