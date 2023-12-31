# Create two vectors of different lengths.
vector1 <- c(5, 9, 3)
vector2 <- c(10, 11, 12, 13, 14, 15)
column.names <- c("COL1", "COL2", "COL3")
row.names <- c("ROW1", "ROW2", "ROW3")
matrix.names <- c("Matrix1", "Matrix2")
# Take these vectors as input to the array.
result <- array(
    data = c(vector1, vector2),
    dim = c(3, 3, 2),
    dimnames = list(
        row.names,
        column.names,
        matrix.names
    )
)
print(result)
# accessing array elements
# Print the third row of the second matrix of the array.
print(result[3, , 2])
# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1, 3, 1])
# Print the 2nd Matrix.
print(result[, , 2])
# Manipulating Array elements
# Create two vectors of different lengths.
vector1 <- c(5, 9, 3)
vector2 <- c(10, 11, 12, 13, 14, 15)
# Take these vectors as input to the array.
array1 <- array(c(vector1, vector2), dim = c(3, 3, 2))
print(array1)
# Create two vectors of different lengths.
vector3 <- c(9, 1, 0)
vector4 <- c(6, 0, 11, 3, 14, 1, 2, 6, 9)
array2 <- array(c(vector3, vector4), dim = c(3, 3, 2))
print(array2)
# create matrices from these arrays.
matrix1 <- array1[, , 2]
matrix2 <- array2[, , 2]
print(matrix1)
print(matrix2)
# Add the matrices.
result <- matrix1 + matrix2
print(result)
# Create two vectors of different lengths.
vector1 <- c(5, 9, 3)
vector2 <- c(10, 11, 12, 13, 14, 15)
# Take these vectors as input to the array.
new.array <- array(data = c(vector1, vector2), dim = c(3, 3, 2))
print(new.array)

# Use apply to calculate the sum of the rows across all the matrices.
result <- apply(new.array, c(2), sum)
print(result)
