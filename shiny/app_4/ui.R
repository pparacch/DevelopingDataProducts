library(shiny)

shinyUI(
    pageWithSidebar(
        headerPanel("Example Plot"),
        sidebarPanel(
            sliderInput("mu", "Guess the mean", 62,74,70,0.05)
        ),
        mainPanel(
            plotOutput("o_hist")
        )
    )
)