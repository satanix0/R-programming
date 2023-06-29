# Program 1
# Create a function to print squares of numbers of in sequence
foo <- function(a) {
    for (i in 1:a) {
        b <- i^2
        print(b)
    }
}
foo(6)

# Program 2
func2 <- function() {
    print("Func 3 called")
}
func2()

# Program 3
foo2 <- function() {
    for (i in 1:5) {
        b <- i^2
        print(b)
    }
}
foo2()

#  Program 4 -- named arguments
func3 <- function(a, b, c) {
    print(a * b + c)
}
func3(4, 5, 6)
# calling by named arguments
func3(b = 6, c = 5, a = 6)

#  Program 5 -- default arguments
func4 <- function(a = 9, b = 4, c = 5) {
    print(a * b + c)
}
func4()
func4(2)
func4(4, 5)
# calling by named arguments
func4(b = 6, c = 5, a = 9)

# program 5
new.function <- function(a, b) {
    print(a^2)
    print(a)
    print(b)
}

new.function(6) # throws an error - 'b' is missing.
