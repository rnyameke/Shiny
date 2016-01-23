#importing data
data <- read.csv("cleaned_ticket_data.csv")

data$year <- as.factor(data$year)