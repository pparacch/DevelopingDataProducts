library(shiny)

shinyUI(
    pageWithSidebar(
        headerPanel("Shiny with Markups!"),
        sidebarPanel(
            h1("Sidebar Panel"),
            h1("h1 text"),
            h2("h2 text"),
            h3("h3 text"),
            h4("h4 text")
        ),
        mainPanel(
            h3("Main Panel Text"),
            code("some code here"),
            p("some ordinary text")
        )
    )
)