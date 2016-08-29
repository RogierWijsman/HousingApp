Developing Data Products Course project
========================================================
author: Rogier Wijsman
date: 29-08-16


Background
========================================================
This is a Shiny App made for the Coursera course Developing Data Products project. The data used in the app is gathered trough a R webscraper of the <http://funda.nl> housing site.It shows house price data of different streets throughout the Netherlands. The streets are chosen upfront by the people who requested it. 


Shiny by RStudio
========================================================
A web application framework for R 
To turn your analyses into interactive web applications
Which requires no HTML, CSS, or JavaScript knowledge   
  
Location: <https://rogierw.shinyapps.io/HousingApp/>



The App
========================================================

The housing app makes a comparison through the use of boxplots with the use of different variables:

- **Name** - Name of the person who requested analysis
- **Number Of Rooms** - Number of rooms of the property
- **Week** - For comparison among weeks



The data
========================================================

The data is included with the App in a rds file. 

```r
housingData <- readRDS("data/HousingData.rds")
head(housingData)
```

```
  WeekName  Name NumberOfRooms Price
1  week 39 Tamar      2 kamers 85000
2  week 40 Tamar      2 kamers 85000
3  week 41 Tamar      2 kamers 85000
4  week 42 Tamar      2 kamers 85000
5  week 43 Tamar      2 kamers 85000
6  week 44 Tamar      2 kamers 85000
```
