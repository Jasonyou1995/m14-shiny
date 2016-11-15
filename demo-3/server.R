### Use input to create a string    

### Use input to create a histogram    
shinyServer(function(input, output) {
  
  # Reder a histogram of a given color
  output$histogram <- renderPlot({
    set.seed(100);
    x <- rnorm(input$num);
    return(hist(x, col = input$color));
  })
})
