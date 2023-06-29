# create a date
x <- as.Date("2023-03-27")
x

# specify the format
y <- as.Date("05/30/2017", format = "%m/%d/%Y")
y
# take a difference
Sys.Date() - as.Date("2020-01-03")
# alternate method with specified units
difftime(Sys.Date(), as.Date("2020-01-03"), units = "hours")
dts <- x
weekdays(dts)
months(dts)
quarters(dts)
Sys.Date()
Sys.time()
Sys.timezone()

# strptime can also be used to convert string to time
datestring <- c("Jan 10, 2012 10:40", "Dec 9, 2011 14:32")
x <- strptime(datestring, format = "%b %d, %Y %H:%M")
x

?strptime()
