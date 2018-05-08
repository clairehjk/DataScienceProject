# Called the libraries that I need
library(dplyr)
library(plotly)
library(shiny)

# Called dataset Iris (built into R) into varible 'dataset'
dataset <- iris

# Using function 'source' I call function 'buildScatter.R' from my scripts folder 
source('./scripts/buildScatter.R')

#Start shinyServer
shinyServer(function(input, output) {
  
  #Render a plotly object that returns a scatter plot
  #Calls function BuildScatter that takes in the dataset iris, whatever specie the user chooses, and whatever part the user chooses)
  output$scatter <- renderPlotly({
    return(BuildScatter(dataset, input$specievar, input$partvar))
  })
})
