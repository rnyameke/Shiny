#data import and cleaning
source("data.R")  


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    #drawing the chart
    output$trendChart <- renderPlot({
      dataInput <- subset(data, year == input$year)
      ggplot(data = dataInput, aes(y = count, x = week, color = year)) + geom_line(aes(group = year)) + 
        geom_point() + scale_x_discrete(breaks = c(1:52))
    })
    
})