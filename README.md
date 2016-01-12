---
output: 
  html_document: 
    keep_md: yes
---

```{r echo=FALSE}
Sys.setlocale("LC_ALL", "C")
```

#DevelopingDataProducts
An initial toolset used to develop data products.

_`data product: production output(s) of a data analysis.`_

##shiny & shinyapps  
`shiny` is web framework for creating data product developed in R. `shinyapps` is a tool to make data product available to everyone as a web product.


```
#How to install shiny
install.packages("shiny")
library(shiny)
```

Some examples of possible (shiny) data products....

```
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


Some useful links for `shiny`  

[shiny](http://shiny.rstudio.com/)  
[runApp](http://shiny.rstudio.com/reference/shiny/latest/runApp.html)  
[debugging Shiny Application](http://shiny.rstudio.com/articles/debugging.html)  
A shiny apps by itself runs on the local host. `shinyapps`can be used to make it available to everyone deploying it in the cloud.

```
#Installing shinyapps
install.packages("devtools")
devtools::install_github('rstudio/shinyapps')
```

Link to [shinyapps](https://www.shinyapps.io/)
 (use __github user__)
 
##`manipulate`  
Mainly used for propotyping quick and iterative graphic run-time (not possible to use it with R markdown).
 
```
#Installing manipulate
install.packages("manipulate")
```

```
library(manipulate)

#Ex1
manipulate(plot(1:x), x = slider(1,100))

#Ex2
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

Documentation about [manipulate](https://support.rstudio.com/hc/en-us/articles/200551906-Interactive-Plotting-with-Manipulate)
 
##rCharts  
rCharts is an R package to create, customize and publish interactive javascript visualizations from R using a familiar lattice style plotting interface.

Documentation: [rCharts](http://ramnathv.github.io/rCharts/)

```
#Installing rCharts
require(devtools)
install_github("ramnathv/rCharts")
```

##googleVis
googleVis is an R package to use R as front end to create google visualizations.

```
#Installing googleVis
install.packages("googleVis")
```

[using googleVis with R](https://cran.r-project.org/web/packages/googleVis/vignettes/googleVis.pdf)  
[googleVis examples](https://cran.r-project.org/web/packages/googleVis/vignettes/googleVis_examples.html)  
[using googleVis with Shiny](http://www.magesblog.com/2013/02/first-steps-of-using-googlevis-on-shiny.html)  

##plotly  
Plotly is an R package for creating interactive web-based graphs via the open source JavaScript graphing library plotly.js.

[plotly](https://plot.ly/)  (use __github user__)    
[plotly and R](https://plot.ly/r/)  
[plotly in knitr reports](https://plot.ly/r/knitr/)  
[plotly in knitr reports - 2](http://www.r-bloggers.com/plot-with-ggplot2-and-plotly-within-knitr-reports/)  
[plotly and shiny](https://plot.ly/r/shiny-tutorial/)

```
#Installing plotly
install.packages("devtools")
devtools::install_github("ropensci/plotly")
```

##Reproducible Presentations
###slidify
`slidify` is one of the main platform used for reproducible presentations in R.

[starting with slidify](http://slidify.org/start.html)

```
#Installing slidify
#install.packages("devtools) #devtools must be installed
require(devtools)
install_github("ramnathv/slidify")
install_github("ramnathv/slidifyLibraries")
```

```
require(slidify)
require(slidifyLibraries)
#Set the working directory
#place where you want to create the presentation
setwd("/Users/thePierLo/courseraSpecialization/git_repos/DevelopingDataProducts")
author("first_deck")
```

`author` will perform the following steps

* create a `first_deck` folder
    * containing specific elements
        * index.Rmd (presentation master)
        * assets folder (css, img, js, etc)
* initialize git repository in `first_deck` folder
* create a gh-pages branch (switching to branch)
* adding a `.nojekill` file to repo

[slidify samples](http://slidify.org/samples/intro/#1)

[how to publish](http://slidify.org/publish.html)  
[Publishing via git on github](https://github.com/ramnathv/slidify/wiki/Publishing)
