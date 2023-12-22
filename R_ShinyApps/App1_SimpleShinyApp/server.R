library(shiny)
library(ggplot2)

shinyServer(function(input, output){
  output$distplot <- renderPlot({
    ggplot(faithful, aes(x=waiting)) +
      geom_histogram(bins = input$bins) +
      labs(x = "Waiting Time", y = "count") +
      theme_bw()
  })
})