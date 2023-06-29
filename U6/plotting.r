cars <- c(1, 3, 6, 4, 9)
cars

plot(cars)

plot(cars, type = "o", col = "blue")

# create a title for the plot
# col.main is the color of the title
title(main = "Autos", col.main = "red", font.main = 4)

# another vector
trucks <- c(2, 5, 4, 5, 12)

# plot cars using a y axis that ranges from 0 to 12
plot(cars, type = "o", col = "blue", ylim = c(0, 12))

# plot truck with red dashed line with square points.

# pch is plot character
# lty is line type
lines(trucks, type = "o", pch = 22, lty = 2, col = "red")
title(main = "Autos", col.main = "red", font.main = 4)

# calculate range from 0 to max
# value of cars and trucks
g_range <- range(0, cars, trucks)
g_range

# Plot autos using y axis that ranges from 0 to max value in cars or trucks
# vector. Disable axes and annotation(labels of axes).
plot(cars, type = "o", col = "blue", ylim = g_range, axes = F, ann = F)

# Make x-axis with custom values
axis(1, at = 1:5, lab = c("Mon", "Tue", "Wed", "Thu", "Fri"))

# display ticks at every 4 marks. 4*0:g_range[2]
# is equivalent to c(0,4,8,12). las is labels
# are parallel (=0) or perpendicular(=2) to axis
axis(2, las = 2, at = 4 * 0:g_range[2])
# Create box around plot
box()
# Graph trucks with red dashed line and square points
lines(trucks, type = "o", pch = 22, lty = 2, col = "red")
# Create a title with a red, bold/italic font
title(main = "Autos", col.main = "red", font.main = 4)
# Label the x and y axes with dark green text
title(xlab = "Days", col.lab = rgb(0, 0, 0))
title(ylab = "Total", col.lab = rgb(1, 0.3, 0))
# Create a legend at (1, g_range[2]) that is
# slightly smaller (cex) and uses the same line
# colors and points used by
# the actual plots
# cex is scaling of text and symbol
legend(1, g_range[2], c("cars", "trucks"),
    cex = 1,
    col = c("blue", "red"), pch = 21:22,
    lty = 1:2
)
# Let's start with a simple pie chart graphing the cars vector:
# Define cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)
# Create a pie chart for cars
pie(cars)
# Now let's add a heading, change the colors, and define our own labels:
# Define cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

# Create a pie chart with defined heading and
# custom colors and labels
pie(cars,
    main = "Cars", col = rainbow(length(cars)),
    labels = c("Mon", "Tue", "Wed", "Thu", "Fri")
)

#############################
# Example
x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)
plot(x, y, type = "o", pch = 25, lty = 1, col = "red")
title(main = "Vector", col.main = "Black", font.main = 4)
#######################
a <- c(7, 12, 28, 3, 41)
barplot(a)
