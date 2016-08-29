library(shiny)
library(datasets)

# We tweak the "am" field to have nicer factor labels. Since
# this doesn't rely on any user inputs we can do this once at
# startup and then use the value throughout the lifetime of the
# application
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
