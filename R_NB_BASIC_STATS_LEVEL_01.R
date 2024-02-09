Cars <- read.csv("Cars.csv")

head(Cars)

prob_a <- sum(Cars$MPG > 38) / length(Cars$MPG)

prob_b <- sum(Cars$MPG < 40) / length(Cars$MPG)

prob_c <- sum(Cars$MPG > 20 & Cars$MPG < 50) / length(Cars$MPG)

prob_a
prob_b
prob_c


#Q 21) Check whether the data follows normal distribution
#a)	Check whether the MPG of Cars follows Normal Distribution 
#Dataset: Cars.csv

# Plot histogram
hist(Cars$MPG, main = "Histogram of MPG", xlab = "MPG")

# Perform Shapiro-Wilk test
shapiro.test(Cars$MPG)

#b)	Check Whether the Adipose Tissue (AT) and Waist Circumference(Waist)  from wc-at data set  follows Normal Distribution 
#Dataset: wc-at.csv
# Assuming you have loaded the wc-at.csv dataset
wc_at <- read.csv("wc-at.csv")

# Plot histograms
par(mfrow = c(1, 2))  # Set up a 1x2 grid for side-by-side plots
hist(wc_at$AT, main = "Histogram of AT", xlab = "AT")
hist(wc_at$Waist, main = "Histogram of Waist", xlab = "Waist")

# Perform Shapiro-Wilk tests
shapiro.test(wc_at$AT)
shapiro.test(wc_at$Waist)




# Plot histogram
hist(Cars$MPG, main = "Histogram of MPG", xlab = "MPG")

# Perform Shapiro-Wilk test
shapiro.test(Cars$MPG)
