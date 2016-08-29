library(shiny)
library(datasets)


housingData <- readRDS("data/HousingData.rds")



shinyServer(function(input, output) {
  

  formulaText <- reactive({
    paste("Price ~", input$variable)
  })
  
  # Return the formula text for printing as a caption
  output$caption <- renderText({
    formulaText()
  })
  
  output$pricePlot <- renderPlot({
    boxplot(as.formula(formulaText()),
            data = housingData,
            outline = input$outliers, 
            las = 2,
            ylab ="EUR",
            yaxt="n")
    axis(2,at=housingData$Price,labels=housingData$Price)
  })
})
