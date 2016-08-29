library(shiny)


shinyUI(fluidPage(
  titlePanel("Distribution of housing prices"),
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Variable:",
                  c("Name" = "Name",
                    "Number of rooms" = "NumberOfRooms",
                    "Week" = "WeekName")),
      
      checkboxInput("outliers", "Show outliers", FALSE)
    ),
    
    mainPanel(
      h3(textOutput("caption")),
      
      plotOutput("pricePlot")
    )
  )
))