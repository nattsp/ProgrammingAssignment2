## Test the Matrix Inverse program in cachematrix.R works

## Here is a matrix where we know what the inverse should be

exampleMatrix <- matrix(c(1, 0, 5, 2, 1, 6, 3, 4, 0), 3, 3)

# The inverse of this matrix should be
# -24  18   5
#  20 -15  -4
#  -5   4   1

# Use the functions makeCacheMatrix and cacheSolve
# check your answers match the matrix above
matrixVector <- makeCacheMatrix(exampleMatrix)
matrixVector$get()
cacheSolve(matrixVector)
cacheSolve(matrixVector)
