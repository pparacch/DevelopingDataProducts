library(shiny)

shinyUI(
    pageWithSidebar(
        headerPanel("Shiny with Inputs"),
        sidebarPanel(
            numericInput("nid1", "Numeric Input (nId1)", 0, min=0, max=10, step=1),
            checkboxGroupInput("cbgid1", "Checkbox", 
                               c("value 1" = "1",
                                 "value 2" = "2",
                                 "value 3" = "3")),
            dateInput("did1", "Date:")
        ),
        mainPanel(
            h3("Outputs ..."),
            h4("Numeric Input Entered"),
            verbatimTextOutput("o_nid1"),
            h4("Checkbox Input Entered"),
            verbatimTextOutput("o_cbgid1"),
            h4("Date Entered"),
            verbatimTextOutput("o_didi1")
        )
    )
)