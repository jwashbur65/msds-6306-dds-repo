###################################################################################
# air_hist.R - Unit 2 Live Session Homework
###################################################################################

# We will be using the built-in dataset airquality which has daily air quality 
# measurements in New York from May to September 1973
str(airquality)

# Take only Temp columns
Temperature <- airquality$Temp
hist(Temperature)

# Histogram with added parameters
hist(Temperature,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="darkmagenta",
     freq=FALSE
)

# TODO: Assignment 2, Q2A: Complete the following code to yield a scatterplot with x as Month and y as Temp
# You're going to customize your plot slightly.  Use the help function to assist you if needed.
# Make the x label "Month" and the y label "Temperature"
# Finally, make the title of the plot "Temperature by Month" 
plot(x=airquality$Month, 
     y=Temperature,
     xlab="Month",
     ylab="Temperature",
     main="Temperature by Month")

# TODO: Assignment 2, Q2B: Build a scatter plot with x as Temperature and y as Ozone 
# Complete the following code:
# Make the x label "Temperature" and the y label "Ozone",
# Make the title of the plot "Temperature vs Ozone"
plot(x=Temperature, 
     y=airquality$Ozone,
     xlab="Temperature",
     ylab="Ozone",
     main="Temperature vs Ozone")
