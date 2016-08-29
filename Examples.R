install.packages("plyr")
library(UsingR)
library(shiny)
library(plyr)
setwd("C:/Users/rogierw/Documents")


runExample("04_mpg") # global variables

runApp("stockVis")
runApp("Housing")

runExample("01_hello") # a histogram
runExample("02_text") # tables and data frames
runExample("03_reactivity") # a reactive expression
runExample("04_mpg") # global variables
runExample("05_sliders") # slider bars
runExample("06_tabsets") # tabbed panels
runExample("07_widgets") # help text and submit buttons
runExample("08_html") # Shiny app built from HTML
runExample("09_upload") # file upload wizard
runExample("10_download") # file download wizard
runExample("11_timer") # an automated timer

saveRDS(HousingData,"HousingData.rds")
?saveRDS
head(HousingData)

Houses <- readRDS("data/HousingData.rds")
head(Houses)
getwd()

renderPlot({
  barplot(Houses$Price,Houses$WeekName)
  str(Houses)
  
})

ddply(Houses,.(WeekName,Name),summarise,mean=mean(Price))


?ddply



