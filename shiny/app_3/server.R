library(shiny)

shinyServer(
    function(input, output){
        output$o_nid1 = renderPrint({input$nid1})
        output$o_cbgid1 = renderPrint({input$cbgid1})
        output$o_didi1 = renderPrint({input$did1})
    }
)