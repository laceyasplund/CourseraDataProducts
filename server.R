library(shiny)
MER <- function(Profit) Profit/Spend

shinyServer(
        function(input, output) {
        output$inputProfit <- renderPrint({input$Profit})
        output$inputSpend <- renderPrint({input$Spend})
        output$prediction <-
                renderPrint({input$Profit}/{input$Spend})##renderPrint({MER(input$Profit/input$Spend)})
        }
)