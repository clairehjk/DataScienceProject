# Call the libraies I need
library(shiny)
library(plotly)
library(dplyr)

#Creates the front end page called Iris so the user can play with the widgets and see what graph they produce
shinyUI(navbarPage('I GO TO SCHOOL SO I CAN MAKE MONEY MOVIE SO ONE DAY I CAN FLEX AND GET HUNNIES', 
                   # Create tab panel for my scatter plot               
                   tabPanel('Learning Effectiveness and GPA Predictor',
                            # Create sidebar layout       
                            sidebarLayout(
                              # Create sidebar panel for widgets
                              sidebarPanel(
                                #First control allows the user to choose which specie they would like to see (They have three choices)
                                selectInput('specievar', label = 'Mode of Transportation:', choices = list("Driving" = 'setosa', "Public Transporation" = 'versicolor', "Walking" = 'virginica', "Manual Transportation" = 'other')),
                                #First control allows the user to choose which specie they would like to see (They have three choices)
                                sliderInput('format', "Amount of Sleep:", min = 0, max = 24, value = 0, post = " hours"),
                                #Second control allows the user to choose which part of the flower they would like to see (They have two choices)
                                sliderInput('format', "Prior Knowledge:", min = 0, max = 100, value = 0, post = "%"),
                                sliderInput('integer', "Teacher Teaching Effectiveness", min = 1, max = 5, value = 0),
                                selectInput('partvar', label = 'Teacher Teaching Effectiveness', choices = list("Poor" = '1', "Fair" = '2', "Good" = '3', "Very Good" = '4', "Excellent" = '5'))
                              ),
                              
                              # Main panel is used to display the scatter plot.
                              mainPanel(
                                plotlyOutput('scatter')
                              )
                            )
                   )
)
)
