library(shiny)
library(ggplot2)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  # Expression that generates a plot of the distribution. The expression
  # is wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically 
  #     re-executed when inputs change
  #  2) Its output type is a plot 
  #
  
  output$ggplot_Plot <- renderPlot({
    ggplot_command = sprintf("g = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()",
                             input$x, input$y, input$colour, input$facet_wrap, input$geom)
    eval(parse(text=ggplot_command))
    g
  })
  
  output$ggplot_command <- renderText({
    ggplot_command = sprintf("g = ggplot(mpg, aes(x=%s, y=%s, colour=%s)) + facet_wrap(~%s) + geom_%s()",
                             input$x, input$y, input$colour, input$facet_wrap, input$geom) 
  })
  
})
