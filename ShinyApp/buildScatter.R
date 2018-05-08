# Called the libraries I need
library(plotly)
library(dplyr)

# Create function 'BuildScatter' that takes in three parameters
BuildScatter <- function(dataset, species, part) {
  # Create new data frame that filters the dataframe to have the Specie the user wants
  species.df <- dataset %>% filter(Species == species)
  
  # Gets the length column of the part the user wants
  x.equation <- paste0('~', part, '.Length')
  # Gets the width column of the part the user wants
  y.equation <- paste0('~', part, '.Width')

  # function 'plot_ly' that creates the scatter graph. Sets the x and y axis from the data in varible x/y.equation
  # marker to change the size and color of the dots on the graph
  p <- plot_ly(data = species.df, x = eval(parse( text = x.equation)), y = eval(parse(text = y.equation)),
    marker = list(size = 5,
                  color = 'rgba(255, 182, 193, .9)',
                  line = list(color = 'rgba(152, 0, 0, .8)',
                              width = 2))) %>%
  
  # Gives the graph a title
  layout(title = paste0('Length vs Width of the ', part))

        
  #Return varible p which holds the graph  
  return(p)
}


  