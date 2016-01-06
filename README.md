# DevelopingDataProducts
##ToolSet

###shiny & shinyapps
`shiny` package - web framework for data product developed in R for intercating grphics and pages



```{r eval=FALSE}
install.packages("shiny")
library(shiny)

system.file("examples", package="shiny")

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


```

[shiny](http://shiny.rstudio.com/)  
[runApp](http://shiny.rstudio.com/reference/shiny/latest/runApp.html)  
[debugging Shiny Application](http://shiny.rstudio.com/articles/debugging.html)  

`shinyapps` package - make data product available to everyone

```{r eval=FALSE}
install.packages("devtools")
devtools::install_github('rstudio/shinyapps')
```

 [shinyapps](https://www.shinyapps.io/)  
 
 ###`manipulate` function
 Mainly used for propotyping quick and iterative graphic
 
 ```{r eval=FALSE}
install.packages("manipulate")
library(manipulate)
manipulate(plot(1:x), x = slider(1,100))
```

```{r eval=FALSE}
library(manipulate)
library(UsingR)
myHist <- function(mu){
  hist(galton$child,col="blue",breaks=100)
  lines(c(mu, mu), c(0, 150),col="red",lwd=5)
  mse <- mean((galton$child - mu)^2)
  text(63, 150, paste("mu = ", mu))
  text(63, 140, paste("MSE = ", round(mse, 2)))
}
manipulate(myHist(mu), mu = slider(62, 74, step = 0.5))
```

 [manipulate](https://support.rstudio.com/hc/en-us/articles/200551906-Interactive-Plotting-with-Manipulate)
 