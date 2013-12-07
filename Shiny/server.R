######################################
### Frisk and Stop Data - server.R ###
######################################
library(shiny) # load shiny at beginning at both scripts
library(ggplot2) #load ggplot2
library(shiny) #load shiny

shinyServer(function(input, output) { 
  
  output$textDisplay1 <- renderText({ 
                                     
    paste0("Clusters:'", input$num.clusters)
  })
  
  output$textDisplay2 <- renderText({ 
    
    paste0("Year:'", input$year)
  })
  
  output$plotDisplay <- renderPlot({
    
    par(bg ="#ECF1EF")
    
    plot(poly(1:100, as.numeric(input$graph)), type = "l", ylab="y", xlab="x")
    
  })
  
})