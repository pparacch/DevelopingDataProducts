library(shiny)

shinyUI(
    pageWithSidebar(
        headerPanel("Hello Shiny!"),
        sidebarPanel(
            h3("Sidebar Text (h3)")
        ),
        mainPanel(
            h3("Main Panel Text (h3)")
        )
    )
)