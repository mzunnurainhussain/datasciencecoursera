library(shiny)
library(ggplot2)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Basic Introduction to ggplot2"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    selectInput("geom", "Choose a ggplot2 geometry:", choices = c("point", "line", "boxplot"), selected = "point" ),
    selectInput("x", "Choose x:", choices = colnames(mpg), selected = "cyl"),
    selectInput("y", "Choose y:", choices = colnames(mpg), selected = "hwy"),
    selectInput("colour", "Choose colour:", choices = colnames(mpg), selected = "manufacturer" ),
    selectInput("facet_wrap", "Choose facet_wrap:", choices = colnames(mpg), selected = "trans" )
  ),
  
  # Show the generated plot
  mainPanel(
    plotOutput("ggplot_Plot"),
    h3(textOutput("ggplot_command")),
  )
))
