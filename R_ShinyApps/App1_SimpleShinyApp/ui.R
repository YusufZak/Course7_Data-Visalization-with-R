library(shiny)

shinyUI(fluidPage(
  titlePanel("Old Faithful Geyser Data"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Select number of bins",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    mainPanel(plotOutput("distplot"))
  )
))