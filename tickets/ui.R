library(shiny)
library (ggplot2)

source("data.R") 

# Define UI for application that draws a line graph
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Ticket trends"),

  #Sidebar with checkboxes
    sidebarLayout(
      sidebarPanel(
        helpText("Select the years you want to view"),
        checkboxGroupInput("year", "Year:", choices = levels(data$year))
      ),
    
        
    # Show a plot of the generated distribution
    mainPanel(plotOutput("trendChart"))
    )
  )
)